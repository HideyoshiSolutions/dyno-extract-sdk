# FileApi

All URIs are relative to *https://api.dyno.hideyoshi.sh*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**confirmUpload**](FileApi.md#confirmupload) | **POST** /v1/file/{file_id}/confirm | Confirm upload |
| [**getFile**](FileApi.md#getfile) | **GET** /v1/file/{file_id} | Get file |
| [**getFileMetadata**](FileApi.md#getfilemetadata) | **GET** /v1/file/{file_id}/metadata | Get file metadata |
| [**requestUpload**](FileApi.md#requestupload) | **POST** /v1/file/ | Request upload |



## confirmUpload

> any confirmUpload(fileId)

Confirm upload

### Example

```ts
import {
  Configuration,
  FileApi,
} from 'dyno-extract-sdk';
import type { ConfirmUploadRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new FileApi(config);

  const body = {
    // string
    fileId: fileId_example,
  } satisfies ConfirmUploadRequest;

  try {
    const data = await api.confirmUpload(body);
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
| **fileId** | `string` |  | [Defaults to `undefined`] |

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


## getFile

> Blob getFile(fileId)

Get file

### Example

```ts
import {
  Configuration,
  FileApi,
} from 'dyno-extract-sdk';
import type { GetFileRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new FileApi(config);

  const body = {
    // string
    fileId: fileId_example,
  } satisfies GetFileRequest;

  try {
    const data = await api.getFile(body);
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
| **fileId** | `string` |  | [Defaults to `undefined`] |

### Return type

**Blob**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [OAuthScheme](../README.md#OAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/octet-stream`, `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The file content |  -  |
| **401** | Missing or invalid credentials |  -  |
| **403** | The current legal documents were not accepted |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getFileMetadata

> FileModel getFileMetadata(fileId)

Get file metadata

### Example

```ts
import {
  Configuration,
  FileApi,
} from 'dyno-extract-sdk';
import type { GetFileMetadataRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new FileApi(config);

  const body = {
    // string
    fileId: fileId_example,
  } satisfies GetFileMetadataRequest;

  try {
    const data = await api.getFileMetadata(body);
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
| **fileId** | `string` |  | [Defaults to `undefined`] |

### Return type

[**FileModel**](FileModel.md)

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


## requestUpload

> UploadRequestModel requestUpload(createFileModel)

Request upload

### Example

```ts
import {
  Configuration,
  FileApi,
} from 'dyno-extract-sdk';
import type { RequestUploadRequest } from 'dyno-extract-sdk';

async function example() {
  console.log("🚀 Testing dyno-extract-sdk SDK...");
  const config = new Configuration({ 
    // To configure API key authorization: APIKeyHeader
    apiKey: "YOUR API KEY",
  });
  const api = new FileApi(config);

  const body = {
    // CreateFileModel
    createFileModel: ...,
  } satisfies RequestUploadRequest;

  try {
    const data = await api.requestUpload(body);
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
| **createFileModel** | [CreateFileModel](CreateFileModel.md) |  | |

### Return type

[**UploadRequestModel**](UploadRequestModel.md)

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

