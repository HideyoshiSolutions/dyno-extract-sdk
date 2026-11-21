# Trim an OpenAPI spec down to the operations carrying one of the given tags,
# and the component schemas they (transitively) reference.
#
# Usage: jq --arg tags "blueprint,file" -f scripts/filter-spec.jq spec.json

($tags | split(",")) as $keep
| def http_methods: ["get","put","post","delete","options","head","patch","trace"];
  def schema_refs: [.. | objects | ."$ref"? // empty
                    | select(startswith("#/components/schemas/"))
                    | ltrimstr("#/components/schemas/")] | unique;

  # 1. Keep only operations whose tags intersect $keep; drop emptied paths.
  .paths |= (with_entries(
      .value |= with_entries(
        select((.key | IN(http_methods[]) | not)
               or ((.value.tags // []) | any(IN($keep[]))))
      )
      | select(.value | keys | any(IN(http_methods[])))
    ))

  # 2. Compute the closure of schemas reachable from the remaining paths.
  | .components.schemas as $all
  | (.paths | schema_refs) as $seed
  | ({seen: $seed, frontier: $seed}
     | until(.frontier | length == 0;
         ([.frontier[] | $all[.] | schema_refs] | add // [] | unique) as $next
         | ($next - .seen) as $new
         | .seen += $new | .frontier = $new)
     | .seen) as $used

  # 3. Drop unreferenced schemas and unused tag definitions.
  | .components.schemas |= with_entries(select(.key | IN($used[])))
  | if .tags then .tags |= map(select(.name | IN($keep[]))) else . end
