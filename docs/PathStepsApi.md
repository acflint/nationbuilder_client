# NationbuilderClient::PathStepsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_path_step**](PathStepsApi.md#create_path_step) | **POST** /api/v2/path_steps | Create a path step |
| [**delete_path_step**](PathStepsApi.md#delete_path_step) | **DELETE** /api/v2/path_steps/{id} | Delete path step with provided ID |
| [**list_path_steps**](PathStepsApi.md#list_path_steps) | **GET** /api/v2/path_steps | List all path steps in a nation |
| [**show_path_step**](PathStepsApi.md#show_path_step) | **GET** /api/v2/path_steps/{id} | Show path step with provided ID |
| [**update_path_step**](PathStepsApi.md#update_path_step) | **PATCH** /api/v2/path_steps/{id} | Update an existing path step |


## create_path_step

> <PathStepShowResponse> create_path_step(opts)

Create a path step

Creates a path step from given data. If the position you specify is already taken by another step on                   the path, your step will be placed at that position and that step and the steps following will be                   re-ordered. If you do not specify a position, the step will be auto-assigned to the last position in                   the list of path steps for the related path.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathStepsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  fields_path_steps: 'fields_path_steps_example', # String | Comma-delimited list of attributes to only return in the response
  path_step_create_request: NationbuilderClient::PathStepCreateRequest.new # PathStepCreateRequest | 
}

begin
  # Create a path step
  result = api_instance.create_path_step(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->create_path_step: #{e}"
end
```

#### Using the create_path_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathStepShowResponse>, Integer, Hash)> create_path_step_with_http_info(opts)

```ruby
begin
  # Create a path step
  data, status_code, headers = api_instance.create_path_step_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathStepShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->create_path_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person  | [optional] |
| **fields_path_steps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_step_create_request** | [**PathStepCreateRequest**](PathStepCreateRequest.md) |  | [optional] |

### Return type

[**PathStepShowResponse**](PathStepShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_path_step

> <EmptyMetaResponse> delete_path_step(id, opts)

Delete path step with provided ID

Delete path step with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathStepsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  fields_path_steps: 'fields_path_steps_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete path step with provided ID
  result = api_instance.delete_path_step(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->delete_path_step: #{e}"
end
```

#### Using the delete_path_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_path_step_with_http_info(id, opts)

```ruby
begin
  # Delete path step with provided ID
  data, status_code, headers = api_instance.delete_path_step_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->delete_path_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person  | [optional] |
| **fields_path_steps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_path_steps

> <PathStepIndexResponse> list_path_steps(opts)

List all path steps in a nation

Lists all path steps

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathStepsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  fields_path_steps: 'fields_path_steps_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all path steps in a nation
  result = api_instance.list_path_steps(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->list_path_steps: #{e}"
end
```

#### Using the list_path_steps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathStepIndexResponse>, Integer, Hash)> list_path_steps_with_http_info(opts)

```ruby
begin
  # List all path steps in a nation
  data, status_code, headers = api_instance.list_path_steps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathStepIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->list_path_steps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person  | [optional] |
| **fields_path_steps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PathStepIndexResponse**](PathStepIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_path_step

> <PathStepShowResponse> show_path_step(id, opts)

Show path step with provided ID

Show path step with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathStepsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  fields_path_steps: 'fields_path_steps_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show path step with provided ID
  result = api_instance.show_path_step(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->show_path_step: #{e}"
end
```

#### Using the show_path_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathStepShowResponse>, Integer, Hash)> show_path_step_with_http_info(id, opts)

```ruby
begin
  # Show path step with provided ID
  data, status_code, headers = api_instance.show_path_step_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathStepShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->show_path_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person  | [optional] |
| **fields_path_steps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathStepShowResponse**](PathStepShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_path_step

> <PathStepShowResponse> update_path_step(id, opts)

Update an existing path step

Updates an existing path step. If the position you specify is already taken by another step on                   the path, your step will be placed at that position and that step and the steps following will be                   re-ordered.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathStepsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  fields_path_steps: 'fields_path_steps_example', # String | Comma-delimited list of attributes to only return in the response
  path_step_update_request: NationbuilderClient::PathStepUpdateRequest.new # PathStepUpdateRequest | 
}

begin
  # Update an existing path step
  result = api_instance.update_path_step(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->update_path_step: #{e}"
end
```

#### Using the update_path_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathStepShowResponse>, Integer, Hash)> update_path_step_with_http_info(id, opts)

```ruby
begin
  # Update an existing path step
  data, status_code, headers = api_instance.update_path_step_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathStepShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathStepsApi->update_path_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person  | [optional] |
| **fields_path_steps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_step_update_request** | [**PathStepUpdateRequest**](PathStepUpdateRequest.md) |  | [optional] |

### Return type

[**PathStepShowResponse**](PathStepShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

