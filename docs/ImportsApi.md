# NationbuilderClient::ImportsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_imports**](ImportsApi.md#list_imports) | **GET** /api/v2/imports | List all imports in a nation |
| [**show_import**](ImportsApi.md#show_import) | **GET** /api/v2/imports/{id} | Show import with provided ID |


## list_imports

> <ImportIndexResponse> list_imports(opts)

List all imports in a nation

List all imports

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ImportsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator 
  fields_imports: 'fields_imports_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # List all imports in a nation
  result = api_instance.list_imports(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ImportsApi->list_imports: #{e}"
end
```

#### Using the list_imports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportIndexResponse>, Integer, Hash)> list_imports_with_http_info(opts)

```ruby
begin
  # List all imports in a nation
  data, status_code, headers = api_instance.list_imports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ImportsApi->list_imports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator  | [optional] |
| **fields_imports** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**ImportIndexResponse**](ImportIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_import

> <ImportShowResponse> show_import(id, opts)

Show import with provided ID

Show import with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ImportsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator, signups 
  fields_imports: 'fields_imports_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show import with provided ID
  result = api_instance.show_import(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ImportsApi->show_import: #{e}"
end
```

#### Using the show_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportShowResponse>, Integer, Hash)> show_import_with_http_info(id, opts)

```ruby
begin
  # Show import with provided ID
  data, status_code, headers = api_instance.show_import_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ImportsApi->show_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator, signups  | [optional] |
| **fields_imports** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**ImportShowResponse**](ImportShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

