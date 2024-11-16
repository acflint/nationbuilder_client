# NationbuilderClient::PathJourneysApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**abandon_path_journey**](PathJourneysApi.md#abandon_path_journey) | **PATCH** /api/v2/path_journeys/{id}/abandon | Abandon path journey with provided ID |
| [**complete_path_journey**](PathJourneysApi.md#complete_path_journey) | **PATCH** /api/v2/path_journeys/{id}/complete | Complete path journey with provided ID |
| [**create_path_journey**](PathJourneysApi.md#create_path_journey) | **POST** /api/v2/path_journeys | Create a path journey |
| [**list_path_journeys**](PathJourneysApi.md#list_path_journeys) | **GET** /api/v2/path_journeys | List all path journeys in a nation |
| [**reactivate_path_journey**](PathJourneysApi.md#reactivate_path_journey) | **PATCH** /api/v2/path_journeys/{id}/reactivate | Reactivate path journey with provided ID |
| [**show_path_journey**](PathJourneysApi.md#show_path_journey) | **GET** /api/v2/path_journeys/{id} | Show path journey with provided ID |
| [**update_path_journey**](PathJourneysApi.md#update_path_journey) | **PATCH** /api/v2/path_journeys/{id} | Update an existing path journey |
| [**void_path_journey**](PathJourneysApi.md#void_path_journey) | **PATCH** /api/v2/path_journeys/{id}/void | Void path journey with provided ID |


## abandon_path_journey

> <PathJourneyShowResponse> abandon_path_journey(id, opts)

Abandon path journey with provided ID

Abandon path journey with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
id = 'id_example' # String | 
opts = {
  path_journey_status_change_id: '1', # String | ID for abandonment reason
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  fields_path_journeys: 'fields_path_journeys_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Abandon path journey with provided ID
  result = api_instance.abandon_path_journey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->abandon_path_journey: #{e}"
end
```

#### Using the abandon_path_journey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyShowResponse>, Integer, Hash)> abandon_path_journey_with_http_info(id, opts)

```ruby
begin
  # Abandon path journey with provided ID
  data, status_code, headers = api_instance.abandon_path_journey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->abandon_path_journey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **path_journey_status_change_id** | **String** | ID for abandonment reason | [optional] |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathJourneyShowResponse**](PathJourneyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## complete_path_journey

> <PathJourneyShowResponse> complete_path_journey(id, opts)

Complete path journey with provided ID

Complete path journey with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
id = 'id_example' # String | 
opts = {
  path_journey_status_change_id: '1', # String | ID for completion reason
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  fields_path_journeys: 'fields_path_journeys_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Complete path journey with provided ID
  result = api_instance.complete_path_journey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->complete_path_journey: #{e}"
end
```

#### Using the complete_path_journey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyShowResponse>, Integer, Hash)> complete_path_journey_with_http_info(id, opts)

```ruby
begin
  # Complete path journey with provided ID
  data, status_code, headers = api_instance.complete_path_journey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->complete_path_journey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **path_journey_status_change_id** | **String** | ID for completion reason | [optional] |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathJourneyShowResponse**](PathJourneyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_path_journey

> <PathJourneyShowResponse> create_path_journey(opts)

Create a path journey

Creates a path journey from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step 
  fields_path_journeys: 'fields_path_journeys_example', # String | Comma-delimited list of attributes to only return in the response
  path_journey_create_request: NationbuilderClient::PathJourneyCreateRequest.new # PathJourneyCreateRequest | 
}

begin
  # Create a path journey
  result = api_instance.create_path_journey(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->create_path_journey: #{e}"
end
```

#### Using the create_path_journey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyShowResponse>, Integer, Hash)> create_path_journey_with_http_info(opts)

```ruby
begin
  # Create a path journey
  data, status_code, headers = api_instance.create_path_journey_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->create_path_journey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_journey_create_request** | [**PathJourneyCreateRequest**](PathJourneyCreateRequest.md) |  | [optional] |

### Return type

[**PathJourneyShowResponse**](PathJourneyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_path_journeys

> <PathJourneyIndexResponse> list_path_journeys(opts)

List all path journeys in a nation

Lists all path journeys

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step 
  fields_path_journeys: 'fields_path_journeys_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all path journeys in a nation
  result = api_instance.list_path_journeys(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->list_path_journeys: #{e}"
end
```

#### Using the list_path_journeys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyIndexResponse>, Integer, Hash)> list_path_journeys_with_http_info(opts)

```ruby
begin
  # List all path journeys in a nation
  data, status_code, headers = api_instance.list_path_journeys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->list_path_journeys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PathJourneyIndexResponse**](PathJourneyIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reactivate_path_journey

> <PathJourneyShowResponse> reactivate_path_journey(id, opts)

Reactivate path journey with provided ID

Reactivate path journey with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  fields_path_journeys: 'fields_path_journeys_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Reactivate path journey with provided ID
  result = api_instance.reactivate_path_journey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->reactivate_path_journey: #{e}"
end
```

#### Using the reactivate_path_journey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyShowResponse>, Integer, Hash)> reactivate_path_journey_with_http_info(id, opts)

```ruby
begin
  # Reactivate path journey with provided ID
  data, status_code, headers = api_instance.reactivate_path_journey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->reactivate_path_journey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathJourneyShowResponse**](PathJourneyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_path_journey

> <PathJourneyShowResponse> show_path_journey(id, opts)

Show path journey with provided ID

Show path journey with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  fields_path_journeys: 'fields_path_journeys_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show path journey with provided ID
  result = api_instance.show_path_journey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->show_path_journey: #{e}"
end
```

#### Using the show_path_journey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyShowResponse>, Integer, Hash)> show_path_journey_with_http_info(id, opts)

```ruby
begin
  # Show path journey with provided ID
  data, status_code, headers = api_instance.show_path_journey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->show_path_journey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathJourneyShowResponse**](PathJourneyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_path_journey

> <PathJourneyShowResponse> update_path_journey(id, opts)

Update an existing path journey

Updates an existing path journey

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  fields_path_journeys: 'fields_path_journeys_example', # String | Comma-delimited list of attributes to only return in the response
  path_journey_update_request: NationbuilderClient::PathJourneyUpdateRequest.new # PathJourneyUpdateRequest | 
}

begin
  # Update an existing path journey
  result = api_instance.update_path_journey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->update_path_journey: #{e}"
end
```

#### Using the update_path_journey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyShowResponse>, Integer, Hash)> update_path_journey_with_http_info(id, opts)

```ruby
begin
  # Update an existing path journey
  data, status_code, headers = api_instance.update_path_journey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->update_path_journey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **path_journey_update_request** | [**PathJourneyUpdateRequest**](PathJourneyUpdateRequest.md) |  | [optional] |

### Return type

[**PathJourneyShowResponse**](PathJourneyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_path_journey

> <PathJourneyShowResponse> void_path_journey(id, opts)

Void path journey with provided ID

Void path journey with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathJourneysApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  fields_path_journeys: 'fields_path_journeys_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Void path journey with provided ID
  result = api_instance.void_path_journey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->void_path_journey: #{e}"
end
```

#### Using the void_path_journey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathJourneyShowResponse>, Integer, Hash)> void_path_journey_with_http_info(id, opts)

```ruby
begin
  # Void path journey with provided ID
  data, status_code, headers = api_instance.void_path_journey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathJourneyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathJourneysApi->void_path_journey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories  | [optional] |
| **fields_path_journeys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathJourneyShowResponse**](PathJourneyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

