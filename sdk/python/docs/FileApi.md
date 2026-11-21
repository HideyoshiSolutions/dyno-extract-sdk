# dyno_extract_sdk.FileApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_upload**](FileApi.md#confirm_upload) | **POST** /v1/file/{key}/confirm | Confirm upload
[**get_file**](FileApi.md#get_file) | **GET** /v1/file/{key} | Get file
[**get_file_metadata**](FileApi.md#get_file_metadata) | **GET** /v1/file/{key}/metadata | Get file metadata
[**request_upload**](FileApi.md#request_upload) | **POST** /v1/file/ | Request upload


# **confirm_upload**
> object confirm_upload(key)

Confirm upload

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
    api_instance = dyno_extract_sdk.FileApi(api_client)
    key = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # Confirm upload
        api_response = await api_instance.confirm_upload(key)
        print("The response of FileApi->confirm_upload:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FileApi->confirm_upload: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **UUID**|  | 

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

# **get_file**
> bytes get_file(key)

Get file

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
    api_instance = dyno_extract_sdk.FileApi(api_client)
    key = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # Get file
        api_response = await api_instance.get_file(key)
        print("The response of FileApi->get_file:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FileApi->get_file: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **UUID**|  | 

### Return type

**bytes**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The file content |  -  |
**401** | Missing or invalid credentials |  -  |
**403** | The current legal documents were not accepted |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_file_metadata**
> FileModel get_file_metadata(key)

Get file metadata

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.file_model import FileModel
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
    api_instance = dyno_extract_sdk.FileApi(api_client)
    key = UUID('38400000-8cf0-11bd-b23e-10b96e4ef00d') # UUID | 

    try:
        # Get file metadata
        api_response = await api_instance.get_file_metadata(key)
        print("The response of FileApi->get_file_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FileApi->get_file_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **UUID**|  | 

### Return type

[**FileModel**](FileModel.md)

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

# **request_upload**
> UploadRequestModel request_upload(create_file_model)

Request upload

### Example

* Api Key Authentication (APIKeyHeader):

```python
import dyno_extract_sdk
from dyno_extract_sdk.models.create_file_model import CreateFileModel
from dyno_extract_sdk.models.upload_request_model import UploadRequestModel
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
    api_instance = dyno_extract_sdk.FileApi(api_client)
    create_file_model = dyno_extract_sdk.CreateFileModel() # CreateFileModel | 

    try:
        # Request upload
        api_response = await api_instance.request_upload(create_file_model)
        print("The response of FileApi->request_upload:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FileApi->request_upload: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_file_model** | [**CreateFileModel**](CreateFileModel.md)|  | 

### Return type

[**UploadRequestModel**](UploadRequestModel.md)

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

