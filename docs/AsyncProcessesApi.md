# NationbuilderClient::AsyncProcessesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**show_async_process**](AsyncProcessesApi.md#show_async_process) | **GET** /api/v2/async_processes/{id} | Show async process with provided token ID |


## show_async_process

> <ShowAsyncProcess200Response> show_async_process(id)

Show async process with provided token ID

Show async process with provided token ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AsyncProcessesApi.new
id = 'id_example' # String | id

begin
  # Show async process with provided token ID
  result = api_instance.show_async_process(id)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AsyncProcessesApi->show_async_process: #{e}"
end
```

#### Using the show_async_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShowAsyncProcess200Response>, Integer, Hash)> show_async_process_with_http_info(id)

```ruby
begin
  # Show async process with provided token ID
  data, status_code, headers = api_instance.show_async_process_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShowAsyncProcess200Response>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AsyncProcessesApi->show_async_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |

### Return type

[**ShowAsyncProcess200Response**](ShowAsyncProcess200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

