# dyno_extract_sdk.BlueprintApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_revision**](BlueprintApi.md#add_revision) | **POST** /v1/blueprint/{slug}/def | Add revision
[**create_blueprint_task**](BlueprintApi.md#create_blueprint_task) | **POST** /v1/blueprint/{slug}/task | Create blueprint task
[**create_user_blueprint**](BlueprintApi.md#create_user_blueprint) | **POST** /v1/blueprint/ | Create user blueprint
[**delete_blueprint**](BlueprintApi.md#delete_blueprint) | **DELETE** /v1/blueprint/{slug} | Delete blueprint
[**delete_revision**](BlueprintApi.md#delete_revision) | **DELETE** /v1/blueprint/{slug}/def/{revision} | Delete revision
[**get_blueprint_by_slug**](BlueprintApi.md#get_blueprint_by_slug) | **GET** /v1/blueprint/{slug} | Get blueprint by slug
[**get_blueprint_revisions**](BlueprintApi.md#get_blueprint_revisions) | **GET** /v1/blueprint/{slug}/def | Get blueprint revisions
[**get_blueprint_task**](BlueprintApi.md#get_blueprint_task) | **GET** /v1/blueprint/{slug}/task/{task_id} | Get blueprint task
[**get_revision**](BlueprintApi.md#get_revision) | **GET** /v1/blueprint/{slug}/def/{revision} | Get revision
[**get_user_blueprints**](BlueprintApi.md#get_user_blueprints) | **GET** /v1/blueprint/ | Get user blueprints
[**list_tasks**](BlueprintApi.md#list_tasks) | **GET** /v1/blueprint/{slug}/task | List tasks
[**promote_revision**](BlueprintApi.md#promote_revision) | **POST** /v1/blueprint/{slug}/def/{revision}/promote | Promote revision
[**update_blueprint**](BlueprintApi.md#update_blueprint) | **PATCH** /v1/blueprint/{slug} | Update blueprint


# **add_revision**
> BlueprintDefinitionModel add_revision(slug, request_body)

Add revision

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_definition_model import BlueprintDefinitionModel
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    request_body = None # Dict[str, Optional[object]] | 

    try:
        # Add revision
        api_response = await api_instance.add_revision(slug, request_body)
        print("The response of BlueprintApi->add_revision:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->add_revision: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **request_body** | [**Dict[str, Optional[object]]**](object.md)|  | 

### Return type

[**BlueprintDefinitionModel**](BlueprintDefinitionModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_blueprint_task**
> BlueprintTaskModel create_blueprint_task(slug, create_blueprint_task_model, blocking=blocking)

Create blueprint task

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_task_model import BlueprintTaskModel
from dyno_extract_sdk.models.create_blueprint_task_model import CreateBlueprintTaskModel
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    create_blueprint_task_model = dyno_extract_sdk.CreateBlueprintTaskModel() # CreateBlueprintTaskModel | 
    blocking = False # bool |  (optional) (default to False)

    try:
        # Create blueprint task
        api_response = await api_instance.create_blueprint_task(slug, create_blueprint_task_model, blocking=blocking)
        print("The response of BlueprintApi->create_blueprint_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->create_blueprint_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **create_blueprint_task_model** | [**CreateBlueprintTaskModel**](CreateBlueprintTaskModel.md)|  | 
 **blocking** | **bool**|  | [optional] [default to False]

### Return type

[**BlueprintTaskModel**](BlueprintTaskModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_user_blueprint**
> BlueprintModel create_user_blueprint(create_blueprint_model)

Create user blueprint

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_model import BlueprintModel
from dyno_extract_sdk.models.create_blueprint_model import CreateBlueprintModel
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    create_blueprint_model = dyno_extract_sdk.CreateBlueprintModel() # CreateBlueprintModel | 

    try:
        # Create user blueprint
        api_response = await api_instance.create_user_blueprint(create_blueprint_model)
        print("The response of BlueprintApi->create_user_blueprint:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->create_user_blueprint: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_blueprint_model** | [**CreateBlueprintModel**](CreateBlueprintModel.md)|  | 

### Return type

[**BlueprintModel**](BlueprintModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_blueprint**
> delete_blueprint(slug)

Delete blueprint

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 

    try:
        # Delete blueprint
        await api_instance.delete_blueprint(slug)
    except Exception as e:
        print("Exception when calling BlueprintApi->delete_blueprint: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_revision**
> object delete_revision(slug, revision)

Delete revision

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    revision = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # Delete revision
        api_response = await api_instance.delete_revision(slug, revision)
        print("The response of BlueprintApi->delete_revision:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->delete_revision: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **revision** | **UUID**|  | 

### Return type

**object**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_blueprint_by_slug**
> BlueprintModel get_blueprint_by_slug(slug, revision=revision)

Get blueprint by slug

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_model import BlueprintModel
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    revision = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID |  (optional)

    try:
        # Get blueprint by slug
        api_response = await api_instance.get_blueprint_by_slug(slug, revision=revision)
        print("The response of BlueprintApi->get_blueprint_by_slug:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->get_blueprint_by_slug: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **revision** | **UUID**|  | [optional] 

### Return type

[**BlueprintModel**](BlueprintModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_blueprint_revisions**
> BlueprintDefinitionBaseModelWithBlueprintBaseModelPage get_blueprint_revisions(slug, page=page, limit=limit)

Get blueprint revisions

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_definition_base_model_with_blueprint_base_model_page import BlueprintDefinitionBaseModelWithBlueprintBaseModelPage
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    page = 0 # int | The page number to retrieve, from 0 (optional) (default to 0)
    limit = 10 # int | The number of items to retrieve per page (optional) (default to 10)

    try:
        # Get blueprint revisions
        api_response = await api_instance.get_blueprint_revisions(slug, page=page, limit=limit)
        print("The response of BlueprintApi->get_blueprint_revisions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->get_blueprint_revisions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **page** | **int**| The page number to retrieve, from 0 | [optional] [default to 0]
 **limit** | **int**| The number of items to retrieve per page | [optional] [default to 10]

### Return type

[**BlueprintDefinitionBaseModelWithBlueprintBaseModelPage**](BlueprintDefinitionBaseModelWithBlueprintBaseModelPage.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_blueprint_task**
> BlueprintTaskModel get_blueprint_task(slug, task_id)

Get blueprint task

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_task_model import BlueprintTaskModel
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    task_id = 56 # int | 

    try:
        # Get blueprint task
        api_response = await api_instance.get_blueprint_task(slug, task_id)
        print("The response of BlueprintApi->get_blueprint_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->get_blueprint_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **task_id** | **int**|  | 

### Return type

[**BlueprintTaskModel**](BlueprintTaskModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_revision**
> BlueprintDefinitionModel get_revision(slug, revision)

Get revision

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_definition_model import BlueprintDefinitionModel
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    revision = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # Get revision
        api_response = await api_instance.get_revision(slug, revision)
        print("The response of BlueprintApi->get_revision:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->get_revision: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **revision** | **UUID**|  | 

### Return type

[**BlueprintDefinitionModel**](BlueprintDefinitionModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_blueprints**
> BlueprintModelPage get_user_blueprints(page=page, limit=limit)

Get user blueprints

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_model_page import BlueprintModelPage
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    page = 0 # int | The page number to retrieve, from 0 (optional) (default to 0)
    limit = 10 # int | The number of items to retrieve per page (optional) (default to 10)

    try:
        # Get user blueprints
        api_response = await api_instance.get_user_blueprints(page=page, limit=limit)
        print("The response of BlueprintApi->get_user_blueprints:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->get_user_blueprints: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number to retrieve, from 0 | [optional] [default to 0]
 **limit** | **int**| The number of items to retrieve per page | [optional] [default to 10]

### Return type

[**BlueprintModelPage**](BlueprintModelPage.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tasks**
> BlueprintTaskModelPage list_tasks(slug, revision=revision, page=page, limit=limit)

List tasks

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_task_model_page import BlueprintTaskModelPage
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    revision = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID |  (optional)
    page = 0 # int |  (optional) (default to 0)
    limit = 10 # int |  (optional) (default to 10)

    try:
        # List tasks
        api_response = await api_instance.list_tasks(slug, revision=revision, page=page, limit=limit)
        print("The response of BlueprintApi->list_tasks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->list_tasks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **revision** | **UUID**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 10]

### Return type

[**BlueprintTaskModelPage**](BlueprintTaskModelPage.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promote_revision**
> promote_revision(slug, revision)

Promote revision

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    revision = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # Promote revision
        await api_instance.promote_revision(slug, revision)
    except Exception as e:
        print("Exception when calling BlueprintApi->promote_revision: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **revision** | **UUID**|  | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_blueprint**
> BlueprintModel update_blueprint(slug, update_blueprint_model)

Update blueprint

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.blueprint_model import BlueprintModel
from dyno_extract_sdk.models.update_blueprint_model import UpdateBlueprintModel
from dyno_extract_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = dyno_extract_sdk.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
async with dyno_extract_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = dyno_extract_sdk.BlueprintApi(api_client)
    slug = 'slug_example' # str | 
    update_blueprint_model = dyno_extract_sdk.UpdateBlueprintModel() # UpdateBlueprintModel | 

    try:
        # Update blueprint
        api_response = await api_instance.update_blueprint(slug, update_blueprint_model)
        print("The response of BlueprintApi->update_blueprint:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BlueprintApi->update_blueprint: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **str**|  | 
 **update_blueprint_model** | [**UpdateBlueprintModel**](UpdateBlueprintModel.md)|  | 

### Return type

[**BlueprintModel**](BlueprintModel.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

