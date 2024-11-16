# NationbuilderClient::EventsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event**](EventsApi.md#create_event) | **POST** /api/v2/events | Create an event |
| [**delete_event**](EventsApi.md#delete_event) | **DELETE** /api/v2/events/{id} | Delete event with provided ID |
| [**list_events**](EventsApi.md#list_events) | **GET** /api/v2/events | List all events in a nation |
| [**show_event**](EventsApi.md#show_event) | **GET** /api/v2/events/{id} | Show event with provided ID |
| [**update_event**](EventsApi.md#update_event) | **PATCH** /api/v2/events/{id} | Update an existing event |


## create_event

> <EventShowResponse> create_event(opts)

Create an event

Create events with the provided payload. Events must be created with a page resource, which can be sideposted as shown in the example payload. Events must also have a start_at time.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code 
  fields_events: 'fields_events_example', # String | Comma-delimited list of attributes to only return in the response
  event_create_request: NationbuilderClient::EventCreateRequest.new # EventCreateRequest | 
}

begin
  # Create an event
  result = api_instance.create_event(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventShowResponse>, Integer, Hash)> create_event_with_http_info(opts)

```ruby
begin
  # Create an event
  data, status_code, headers = api_instance.create_event_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->create_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code  | [optional] |
| **fields_events** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **event_create_request** | [**EventCreateRequest**](EventCreateRequest.md) |  | [optional] |

### Return type

[**EventShowResponse**](EventShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_event

> <EmptyMetaResponse> delete_event(id, opts)

Delete event with provided ID

Delete event with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code, rsvps, event_ticket_levels 
  fields_events: 'fields_events_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete event with provided ID
  result = api_instance.delete_event(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->delete_event: #{e}"
end
```

#### Using the delete_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_event_with_http_info(id, opts)

```ruby
begin
  # Delete event with provided ID
  data, status_code, headers = api_instance.delete_event_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->delete_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code, rsvps, event_ticket_levels  | [optional] |
| **fields_events** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> <EventIndexResponse> list_events(opts)

List all events in a nation

Lists all events within a nation.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code 
  fields_events: 'fields_events_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all events in a nation
  result = api_instance.list_events(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventIndexResponse>, Integer, Hash)> list_events_with_http_info(opts)

```ruby
begin
  # List all events in a nation
  data, status_code, headers = api_instance.list_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code  | [optional] |
| **fields_events** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**EventIndexResponse**](EventIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_event

> <EventShowResponse> show_event(id, opts)

Show event with provided ID

Show event with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code, rsvps, event_ticket_levels 
  fields_events: 'fields_events_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show event with provided ID
  result = api_instance.show_event(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->show_event: #{e}"
end
```

#### Using the show_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventShowResponse>, Integer, Hash)> show_event_with_http_info(id, opts)

```ruby
begin
  # Show event with provided ID
  data, status_code, headers = api_instance.show_event_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->show_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code, rsvps, event_ticket_levels  | [optional] |
| **fields_events** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EventShowResponse**](EventShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_event

> <EventShowResponse> update_event(id, opts)

Update an existing event

Updates an existing event

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code, rsvps, event_ticket_levels 
  fields_events: 'fields_events_example', # String | Comma-delimited list of attributes to only return in the response
  event_update_request: NationbuilderClient::EventUpdateRequest.new # EventUpdateRequest | 
}

begin
  # Update an existing event
  result = api_instance.update_event(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->update_event: #{e}"
end
```

#### Using the update_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventShowResponse>, Integer, Hash)> update_event_with_http_info(id, opts)

```ruby
begin
  # Update an existing event
  data, status_code, headers = api_instance.update_event_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventsApi->update_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: auto_response_broadcaster, page, point_person, tracking_code, rsvps, event_ticket_levels  | [optional] |
| **fields_events** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **event_update_request** | [**EventUpdateRequest**](EventUpdateRequest.md) |  | [optional] |

### Return type

[**EventShowResponse**](EventShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

