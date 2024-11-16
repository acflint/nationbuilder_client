# NationbuilderClient::PathsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_path**](PathsApi.md#create_path) | **POST** /api/v2/paths | Create a path |
| [**delete_path**](PathsApi.md#delete_path) | **DELETE** /api/v2/paths/{id} | Delete path with provided ID |
| [**list_paths**](PathsApi.md#list_paths) | **GET** /api/v2/paths | List all paths in a nation |
| [**show_path**](PathsApi.md#show_path) | **GET** /api/v2/paths/{id} | Show path with provided ID |
| [**update_path**](PathsApi.md#update_path) | **PATCH** /api/v2/paths/{id} | Update an existing path |


## create_path

> <PathShowResponse> create_path(opts)

Create a path

Creates a path from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: default_point_person 
  fields_paths: 'fields_paths_example', # String | Comma-delimited list of attributes to only return in the response
  path_create_request: NationbuilderClient::PathCreateRequest.new # PathCreateRequest | 
}

begin
  # Create a path
  result = api_instance.create_path(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->create_path: #{e}"
end
```

#### Using the create_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathShowResponse>, Integer, Hash)> create_path_with_http_info(opts)

```ruby
begin
  # Create a path
  data, status_code, headers = api_instance.create_path_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->create_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: default_point_person  | [optional] |
| **fields_paths** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_create_request** | [**PathCreateRequest**](PathCreateRequest.md) |  | [optional] |

### Return type

[**PathShowResponse**](PathShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_path

> <EmptyMetaResponse> delete_path(id, opts)

Delete path with provided ID

Delete path with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path_journeys, path_steps, path_journey_status_changes, default_point_person 
  fields_paths: 'fields_paths_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete path with provided ID
  result = api_instance.delete_path(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->delete_path: #{e}"
end
```

#### Using the delete_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_path_with_http_info(id, opts)

```ruby
begin
  # Delete path with provided ID
  data, status_code, headers = api_instance.delete_path_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->delete_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path_journeys, path_steps, path_journey_status_changes, default_point_person  | [optional] |
| **fields_paths** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_paths

> <PathIndexResponse> list_paths(opts)

List all paths in a nation

Lists all paths

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: default_point_person 
  fields_paths: 'fields_paths_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all paths in a nation
  result = api_instance.list_paths(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->list_paths: #{e}"
end
```

#### Using the list_paths_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathIndexResponse>, Integer, Hash)> list_paths_with_http_info(opts)

```ruby
begin
  # List all paths in a nation
  data, status_code, headers = api_instance.list_paths_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->list_paths_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: default_point_person  | [optional] |
| **fields_paths** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PathIndexResponse**](PathIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_path

> <PathShowResponse> show_path(id, opts)

Show path with provided ID

Show path with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path_journeys, path_steps, path_journey_status_changes, default_point_person 
  fields_paths: 'fields_paths_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show path with provided ID
  result = api_instance.show_path(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->show_path: #{e}"
end
```

#### Using the show_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathShowResponse>, Integer, Hash)> show_path_with_http_info(id, opts)

```ruby
begin
  # Show path with provided ID
  data, status_code, headers = api_instance.show_path_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->show_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path_journeys, path_steps, path_journey_status_changes, default_point_person  | [optional] |
| **fields_paths** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathShowResponse**](PathShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_path

> <PathShowResponse> update_path(id, opts)

Update an existing path

Updates an existing path

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path_journeys, path_steps, path_journey_status_changes, default_point_person 
  fields_paths: 'fields_paths_example', # String | Comma-delimited list of attributes to only return in the response
  path_update_request: NationbuilderClient::PathUpdateRequest.new # PathUpdateRequest | 
}

begin
  # Update an existing path
  result = api_instance.update_path(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->update_path: #{e}"
end
```

#### Using the update_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathShowResponse>, Integer, Hash)> update_path_with_http_info(id, opts)

```ruby
begin
  # Update an existing path
  data, status_code, headers = api_instance.update_path_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathsApi->update_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path_journeys, path_steps, path_journey_status_changes, default_point_person  | [optional] |
| **fields_paths** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_update_request** | [**PathUpdateRequest**](PathUpdateRequest.md) |  | [optional] |

### Return type

[**PathShowResponse**](PathShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

