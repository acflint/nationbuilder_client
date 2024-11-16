# NationbuilderClient::PathJourneyStatusChangesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_path_journey_status_change**](PathJourneyStatusChangesApi.md#create_path_journey_status_change) | **POST** /api/v2/path_journey_status_changes | Create a path journey status change |
| [**delete_path_journey_status_change**](PathJourneyStatusChangesApi.md#delete_path_journey_status_change) | **DELETE** /api/v2/path_journey_status_changes/{id} | Delete path journey status change with provided ID |
| [**list_path_journey_status_changes**](PathJourneyStatusChangesApi.md#list_path_journey_status_changes) | **GET** /api/v2/path_journey_status_changes | List all path journey status changes in a nation |
| [**show_path_journey_status_change**](PathJourneyStatusChangesApi.md#show_path_journey_status_change) | **GET** /api/v2/path_journey_status_changes/{id} | Show path journey status change with provided ID |
| [**update_path_journey_status_change**](PathJourneyStatusChangesApi.md#update_path_journey_status_change) | **PATCH** /api/v2/path_journey_status_changes/{id} | Update an existing path journey status change |


## create_path_journey_status_change

> <PathJourneyStatusChangeShowResponse> create_path_journey_status_change(opts)

Create a path journey status change

Creates a path journey status change from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneyStatusChangesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path 
  fields_path_journey_status_changes: 'fields_path_journey_status_changes_example', # String | Comma-delimited list of attributes to only return in the response
  path_journey_status_change_create_request: NationbuilderClient::PathJourneyStatusChangeCreateRequest.new # PathJourneyStatusChangeCreateRequest | 
}

begin
  # Create a path journey status change
  result = api_instance.create_path_journey_status_change(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->create_path_journey_status_change: #{e}"
end
```

#### Using the create_path_journey_status_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyStatusChangeShowResponse>, Integer, Hash)> create_path_journey_status_change_with_http_info(opts)

```ruby
begin
  # Create a path journey status change
  data, status_code, headers = api_instance.create_path_journey_status_change_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyStatusChangeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->create_path_journey_status_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path  | [optional] |
| **fields_path_journey_status_changes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_journey_status_change_create_request** | [**PathJourneyStatusChangeCreateRequest**](PathJourneyStatusChangeCreateRequest.md) |  | [optional] |

### Return type

[**PathJourneyStatusChangeShowResponse**](PathJourneyStatusChangeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_path_journey_status_change

> <EmptyMetaResponse> delete_path_journey_status_change(id, opts)

Delete path journey status change with provided ID

Delete path journey status change with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneyStatusChangesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories 
  fields_path_journey_status_changes: 'fields_path_journey_status_changes_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete path journey status change with provided ID
  result = api_instance.delete_path_journey_status_change(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->delete_path_journey_status_change: #{e}"
end
```

#### Using the delete_path_journey_status_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_path_journey_status_change_with_http_info(id, opts)

```ruby
begin
  # Delete path journey status change with provided ID
  data, status_code, headers = api_instance.delete_path_journey_status_change_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->delete_path_journey_status_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories  | [optional] |
| **fields_path_journey_status_changes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_path_journey_status_changes

> <PathJourneyStatusChangeIndexResponse> list_path_journey_status_changes(opts)

List all path journey status changes in a nation

Lists all path journey status changes

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneyStatusChangesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path 
  fields_path_journey_status_changes: 'fields_path_journey_status_changes_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all path journey status changes in a nation
  result = api_instance.list_path_journey_status_changes(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->list_path_journey_status_changes: #{e}"
end
```

#### Using the list_path_journey_status_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyStatusChangeIndexResponse>, Integer, Hash)> list_path_journey_status_changes_with_http_info(opts)

```ruby
begin
  # List all path journey status changes in a nation
  data, status_code, headers = api_instance.list_path_journey_status_changes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyStatusChangeIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->list_path_journey_status_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path  | [optional] |
| **fields_path_journey_status_changes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PathJourneyStatusChangeIndexResponse**](PathJourneyStatusChangeIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_path_journey_status_change

> <PathJourneyStatusChangeShowResponse> show_path_journey_status_change(id, opts)

Show path journey status change with provided ID

Show path journey status change with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneyStatusChangesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories 
  fields_path_journey_status_changes: 'fields_path_journey_status_changes_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show path journey status change with provided ID
  result = api_instance.show_path_journey_status_change(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->show_path_journey_status_change: #{e}"
end
```

#### Using the show_path_journey_status_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyStatusChangeShowResponse>, Integer, Hash)> show_path_journey_status_change_with_http_info(id, opts)

```ruby
begin
  # Show path journey status change with provided ID
  data, status_code, headers = api_instance.show_path_journey_status_change_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyStatusChangeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->show_path_journey_status_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories  | [optional] |
| **fields_path_journey_status_changes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathJourneyStatusChangeShowResponse**](PathJourneyStatusChangeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_path_journey_status_change

> <PathJourneyStatusChangeShowResponse> update_path_journey_status_change(id, opts)

Update an existing path journey status change

Updates an existing path journey status change

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneyStatusChangesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories 
  fields_path_journey_status_changes: 'fields_path_journey_status_changes_example', # String | Comma-delimited list of attributes to only return in the response
  path_journey_status_change_update_request: NationbuilderClient::PathJourneyStatusChangeUpdateRequest.new # PathJourneyStatusChangeUpdateRequest | 
}

begin
  # Update an existing path journey status change
  result = api_instance.update_path_journey_status_change(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->update_path_journey_status_change: #{e}"
end
```

#### Using the update_path_journey_status_change_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyStatusChangeShowResponse>, Integer, Hash)> update_path_journey_status_change_with_http_info(id, opts)

```ruby
begin
  # Update an existing path journey status change
  data, status_code, headers = api_instance.update_path_journey_status_change_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyStatusChangeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneyStatusChangesApi->update_path_journey_status_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories  | [optional] |
| **fields_path_journey_status_changes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_journey_status_change_update_request** | [**PathJourneyStatusChangeUpdateRequest**](PathJourneyStatusChangeUpdateRequest.md) |  | [optional] |

### Return type

[**PathJourneyStatusChangeShowResponse**](PathJourneyStatusChangeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

