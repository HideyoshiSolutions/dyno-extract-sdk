# BlueprintApi

All URIs are relative to *https://api.dyno.hideyoshi.sh*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addRevision**](BlueprintApi.md#addrevision) | **POST** /v1/blueprint/{slug}/def | Add revision |
| [**createBlueprintTask**](BlueprintApi.md#createblueprinttask) | **POST** /v1/blueprint/{slug}/task | Create blueprint task |
| [**createUserBlueprint**](BlueprintApi.md#createuserblueprint) | **POST** /v1/blueprint/ | Create user blueprint |
| [**deleteBlueprint**](BlueprintApi.md#deleteblueprint) | **DELETE** /v1/blueprint/{slug} | Delete blueprint |
| [**deleteRevision**](BlueprintApi.md#deleterevision) | **DELETE** /v1/blueprint/{slug}/def/{revision} | Delete revision |
| [**getBlueprintBySlug**](BlueprintApi.md#getblueprintbyslug) | **GET** /v1/blueprint/{slug} | Get blueprint by slug |
| [**getBlueprintRevisions**](BlueprintApi.md#getblueprintrevisions) | **GET** /v1/blueprint/{slug}/def | Get blueprint revisions |
| [**getBlueprintTask**](BlueprintApi.md#getblueprinttask) | **GET** /v1/blueprint/{slug}/task/{task_id} | Get blueprint task |
| [**getRevision**](BlueprintApi.md#getrevision) | **GET** /v1/blueprint/{slug}/def/{revision} | Get revision |
| [**getUserBlueprints**](BlueprintApi.md#getuserblueprints) | **GET** /v1/blueprint/ | Get user blueprints |
| [**listTasks**](BlueprintApi.md#listtasks) | **GET** /v1/blueprint/{slug}/task | List tasks |
| [**promoteRevision**](BlueprintApi.md#promoterevision) | **POST** /v1/blueprint/{slug}/def/{revision}/promote | Promote revision |
| [**updateBlueprint**](BlueprintApi.md#updateblueprint) | **PATCH** /v1/blueprint/{slug} | Update blueprint |



## addRevision

> BlueprintDefinitionModel addRevision(slug, requestBody)

Add revision

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { AddRevisionRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // { [key: string]: any | null; }
    requestBody: Object,
  } satisfies AddRevisionRequest;

  try {
    const data = await api.addRevision(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **requestBody** | `{ [key: string]: any | null; }` |  | |

### Return type

[**BlueprintDefinitionModel**](BlueprintDefinitionModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createBlueprintTask

> BlueprintTaskModel createBlueprintTask(slug, createBlueprintTaskModel, blocking)

Create blueprint task

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { CreateBlueprintTaskRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // CreateBlueprintTaskModel
    createBlueprintTaskModel: ...,
    // boolean (optional)
    blocking: true,
  } satisfies CreateBlueprintTaskRequest;

  try {
    const data = await api.createBlueprintTask(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **createBlueprintTaskModel** | [CreateBlueprintTaskModel](CreateBlueprintTaskModel.md) |  | |
| **blocking** | `boolean` |  | [Optional] [Defaults to `false`] |

### Return type

[**BlueprintTaskModel**](BlueprintTaskModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createUserBlueprint

> BlueprintModel createUserBlueprint(createBlueprintModel)

Create user blueprint

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { CreateUserBlueprintRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // CreateBlueprintModel
    createBlueprintModel: ...,
  } satisfies CreateUserBlueprintRequest;

  try {
    const data = await api.createUserBlueprint(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **createBlueprintModel** | [CreateBlueprintModel](CreateBlueprintModel.md) |  | |

### Return type

[**BlueprintModel**](BlueprintModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteBlueprint

> deleteBlueprint(slug)

Delete blueprint

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { DeleteBlueprintRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
  } satisfies DeleteBlueprintRequest;

  try {
    const data = await api.deleteBlueprint(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteRevision

> any deleteRevision(slug, revision)

Delete revision

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { DeleteRevisionRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // string
    revision: revision_example,
  } satisfies DeleteRevisionRequest;

  try {
    const data = await api.deleteRevision(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **revision** | `string` |  | [Defaults to `undefined`] |

### Return type

**any**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBlueprintBySlug

> BlueprintModel getBlueprintBySlug(slug, revision)

Get blueprint by slug

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { GetBlueprintBySlugRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // string (optional)
    revision: revision_example,
  } satisfies GetBlueprintBySlugRequest;

  try {
    const data = await api.getBlueprintBySlug(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **revision** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**BlueprintModel**](BlueprintModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBlueprintRevisions

> BlueprintDefinitionBaseModelWithBlueprintBaseModelPage getBlueprintRevisions(slug, page, limit)

Get blueprint revisions

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { GetBlueprintRevisionsRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // number | The page number to retrieve, from 0 (optional)
    page: 56,
    // number | The number of items to retrieve per page (optional)
    limit: 56,
  } satisfies GetBlueprintRevisionsRequest;

  try {
    const data = await api.getBlueprintRevisions(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **page** | `number` | The page number to retrieve, from 0 | [Optional] [Defaults to `0`] |
| **limit** | `number` | The number of items to retrieve per page | [Optional] [Defaults to `10`] |

### Return type

[**BlueprintDefinitionBaseModelWithBlueprintBaseModelPage**](BlueprintDefinitionBaseModelWithBlueprintBaseModelPage.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBlueprintTask

> BlueprintTaskModel getBlueprintTask(slug, taskId)

Get blueprint task

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { GetBlueprintTaskRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // string
    taskId: taskId_example,
  } satisfies GetBlueprintTaskRequest;

  try {
    const data = await api.getBlueprintTask(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **taskId** | `string` |  | [Defaults to `undefined`] |

### Return type

[**BlueprintTaskModel**](BlueprintTaskModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getRevision

> BlueprintDefinitionModel getRevision(slug, revision)

Get revision

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { GetRevisionRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // string
    revision: revision_example,
  } satisfies GetRevisionRequest;

  try {
    const data = await api.getRevision(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **revision** | `string` |  | [Defaults to `undefined`] |

### Return type

[**BlueprintDefinitionModel**](BlueprintDefinitionModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getUserBlueprints

> BlueprintModelPage getUserBlueprints(page, limit)

Get user blueprints

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { GetUserBlueprintsRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // number | The page number to retrieve, from 0 (optional)
    page: 56,
    // number | The number of items to retrieve per page (optional)
    limit: 56,
  } satisfies GetUserBlueprintsRequest;

  try {
    const data = await api.getUserBlueprints(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **page** | `number` | The page number to retrieve, from 0 | [Optional] [Defaults to `0`] |
| **limit** | `number` | The number of items to retrieve per page | [Optional] [Defaults to `10`] |

### Return type

[**BlueprintModelPage**](BlueprintModelPage.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## listTasks

> BlueprintTaskModelPage listTasks(slug, revision, page, limit)

List tasks

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { ListTasksRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // string (optional)
    revision: revision_example,
    // number (optional)
    page: 56,
    // number (optional)
    limit: 56,
  } satisfies ListTasksRequest;

  try {
    const data = await api.listTasks(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **revision** | `string` |  | [Optional] [Defaults to `undefined`] |
| **page** | `number` |  | [Optional] [Defaults to `0`] |
| **limit** | `number` |  | [Optional] [Defaults to `10`] |

### Return type

[**BlueprintTaskModelPage**](BlueprintTaskModelPage.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## promoteRevision

> promoteRevision(slug, revision)

Promote revision

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { PromoteRevisionRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // string
    revision: revision_example,
  } satisfies PromoteRevisionRequest;

  try {
    const data = await api.promoteRevision(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **revision** | `string` |  | [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateBlueprint

> BlueprintModel updateBlueprint(slug, updateBlueprintModel)

Update blueprint

### Example

```ts
import {
  Configuration,
  BlueprintApi,
} from 'dyno-extract-sdk';
import type { UpdateBlueprintRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new BlueprintApi(config);

  const body = {
    // string
    slug: slug_example,
    // UpdateBlueprintModel
    updateBlueprintModel: ...,
  } satisfies UpdateBlueprintRequest;

  try {
    const data = await api.updateBlueprint(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **slug** | `string` |  | [Defaults to `undefined`] |
| **updateBlueprintModel** | [UpdateBlueprintModel](UpdateBlueprintModel.md) |  | |

### Return type

[**BlueprintModel**](BlueprintModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

