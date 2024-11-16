# NationbuilderClient::EventTicketLevelsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event_ticket_level**](EventTicketLevelsApi.md#create_event_ticket_level) | **POST** /api/v2/event_ticket_levels | Create an event ticket level |
| [**delete_event_ticket_level**](EventTicketLevelsApi.md#delete_event_ticket_level) | **DELETE** /api/v2/event_ticket_levels/{id} | Delete event ticket level with provided ID |
| [**list_event_ticket_levels**](EventTicketLevelsApi.md#list_event_ticket_levels) | **GET** /api/v2/event_ticket_levels | List all event ticket levels in a nation |
| [**show_event_ticket_level**](EventTicketLevelsApi.md#show_event_ticket_level) | **GET** /api/v2/event_ticket_levels/{id} | Show event ticket level with provided ID |
| [**update_event_ticket_level**](EventTicketLevelsApi.md#update_event_ticket_level) | **PATCH** /api/v2/event_ticket_levels/{id} | Update an existing event ticket level |


## create_event_ticket_level

> <EventTicketLevelShowResponse> create_event_ticket_level(opts)

Create an event ticket level

Creates an event ticket level. Ticket levels must be associated with an event, have a name, a number indicating how many tickets are included in a single purchase, a limit indicating the max number of tickets that can be sold, and an amount in cents indicating the cost of purchasing tickets at this ticket level.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventTicketLevelsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event 
  fields_event_ticket_levels: 'fields_event_ticket_levels_example', # String | Comma-delimited list of attributes to only return in the response
  event_ticket_level_create_request: NationbuilderClient::EventTicketLevelCreateRequest.new # EventTicketLevelCreateRequest | 
}

begin
  # Create an event ticket level
  result = api_instance.create_event_ticket_level(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->create_event_ticket_level: #{e}"
end
```

#### Using the create_event_ticket_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventTicketLevelShowResponse>, Integer, Hash)> create_event_ticket_level_with_http_info(opts)

```ruby
begin
  # Create an event ticket level
  data, status_code, headers = api_instance.create_event_ticket_level_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventTicketLevelShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->create_event_ticket_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event  | [optional] |
| **fields_event_ticket_levels** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **event_ticket_level_create_request** | [**EventTicketLevelCreateRequest**](EventTicketLevelCreateRequest.md) |  | [optional] |

### Return type

[**EventTicketLevelShowResponse**](EventTicketLevelShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_event_ticket_level

> <EmptyMetaResponse> delete_event_ticket_level(id, opts)

Delete event ticket level with provided ID

Delete event ticket level with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventTicketLevelsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps 
  fields_event_ticket_levels: 'fields_event_ticket_levels_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete event ticket level with provided ID
  result = api_instance.delete_event_ticket_level(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->delete_event_ticket_level: #{e}"
end
```

#### Using the delete_event_ticket_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_event_ticket_level_with_http_info(id, opts)

```ruby
begin
  # Delete event ticket level with provided ID
  data, status_code, headers = api_instance.delete_event_ticket_level_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->delete_event_ticket_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps  | [optional] |
| **fields_event_ticket_levels** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_ticket_levels

> <EventTicketLevelIndexResponse> list_event_ticket_levels(opts)

List all event ticket levels in a nation

Lists all event ticket levels in the nation. To request ticket levels for a specific event, filter on event_id using query filtering, `filter[event_id]=123`. Both the Event and Event RSVPs associated with a ticket level can be sideloaded.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventTicketLevelsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event 
  fields_event_ticket_levels: 'fields_event_ticket_levels_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all event ticket levels in a nation
  result = api_instance.list_event_ticket_levels(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->list_event_ticket_levels: #{e}"
end
```

#### Using the list_event_ticket_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventTicketLevelIndexResponse>, Integer, Hash)> list_event_ticket_levels_with_http_info(opts)

```ruby
begin
  # List all event ticket levels in a nation
  data, status_code, headers = api_instance.list_event_ticket_levels_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventTicketLevelIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->list_event_ticket_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event  | [optional] |
| **fields_event_ticket_levels** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**EventTicketLevelIndexResponse**](EventTicketLevelIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_event_ticket_level

> <EventTicketLevelShowResponse> show_event_ticket_level(id, opts)

Show event ticket level with provided ID

Show event ticket level with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventTicketLevelsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps 
  fields_event_ticket_levels: 'fields_event_ticket_levels_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show event ticket level with provided ID
  result = api_instance.show_event_ticket_level(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->show_event_ticket_level: #{e}"
end
```

#### Using the show_event_ticket_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventTicketLevelShowResponse>, Integer, Hash)> show_event_ticket_level_with_http_info(id, opts)

```ruby
begin
  # Show event ticket level with provided ID
  data, status_code, headers = api_instance.show_event_ticket_level_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventTicketLevelShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->show_event_ticket_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps  | [optional] |
| **fields_event_ticket_levels** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EventTicketLevelShowResponse**](EventTicketLevelShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_event_ticket_level

> <EventTicketLevelShowResponse> update_event_ticket_level(id, opts)

Update an existing event ticket level

Updates an existing event ticket level with values provided in the payload.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventTicketLevelsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps 
  fields_event_ticket_levels: 'fields_event_ticket_levels_example', # String | Comma-delimited list of attributes to only return in the response
  event_ticket_level_update_request: NationbuilderClient::EventTicketLevelUpdateRequest.new # EventTicketLevelUpdateRequest | 
}

begin
  # Update an existing event ticket level
  result = api_instance.update_event_ticket_level(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->update_event_ticket_level: #{e}"
end
```

#### Using the update_event_ticket_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventTicketLevelShowResponse>, Integer, Hash)> update_event_ticket_level_with_http_info(id, opts)

```ruby
begin
  # Update an existing event ticket level
  data, status_code, headers = api_instance.update_event_ticket_level_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventTicketLevelShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventTicketLevelsApi->update_event_ticket_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps  | [optional] |
| **fields_event_ticket_levels** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **event_ticket_level_update_request** | [**EventTicketLevelUpdateRequest**](EventTicketLevelUpdateRequest.md) |  | [optional] |

### Return type

[**EventTicketLevelShowResponse**](EventTicketLevelShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

