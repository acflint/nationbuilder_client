# NationbuilderClient::EventRsvpsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event_rsvp**](EventRsvpsApi.md#create_event_rsvp) | **POST** /api/v2/event_rsvps | Create an event rsvp |
| [**delete_event_rsvp**](EventRsvpsApi.md#delete_event_rsvp) | **DELETE** /api/v2/event_rsvps/{id} | Delete an event rsvp with provided ID |
| [**list_event_rsvps**](EventRsvpsApi.md#list_event_rsvps) | **GET** /api/v2/event_rsvps | List all event rsvps in a nation |
| [**show_event_rsvp**](EventRsvpsApi.md#show_event_rsvp) | **GET** /api/v2/event_rsvps/{id} | Show event rsvp with provided ID |
| [**update_event_rsvp**](EventRsvpsApi.md#update_event_rsvp) | **PATCH** /api/v2/event_rsvps/{id} | Update an existing event rsvp |


## create_event_rsvp

> <EventRsvpShowResponse> create_event_rsvp(opts)

Create an event rsvp

Creates an event RSVP. Event RSVPs must contain enough signup data to find an existing signup in the nation, or create a new one. This means callers must provide a first name, last name, and email as part of the Event RSVP payload, which will be matched to an existing signup or will create a new signup with that data. Alternatively, callers may sidepost a signup resource as part of the payload. See sideposting documentation for details.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventRsvpsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup 
  fields_event_rsvps: 'fields_event_rsvps_example', # String | Comma-delimited list of attributes to only return in the response
  event_rsvp_create_request: NationbuilderClient::EventRsvpCreateRequest.new # EventRsvpCreateRequest | 
}

begin
  # Create an event rsvp
  result = api_instance.create_event_rsvp(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->create_event_rsvp: #{e}"
end
```

#### Using the create_event_rsvp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventRsvpShowResponse>, Integer, Hash)> create_event_rsvp_with_http_info(opts)

```ruby
begin
  # Create an event rsvp
  data, status_code, headers = api_instance.create_event_rsvp_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventRsvpShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->create_event_rsvp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup  | [optional] |
| **fields_event_rsvps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **event_rsvp_create_request** | [**EventRsvpCreateRequest**](EventRsvpCreateRequest.md) |  | [optional] |

### Return type

[**EventRsvpShowResponse**](EventRsvpShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_event_rsvp

> <EmptyMetaResponse> delete_event_rsvp(id, opts)

Delete an event rsvp with provided ID

Delete the event RSVP matching the provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventRsvpsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup 
  fields_event_rsvps: 'fields_event_rsvps_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete an event rsvp with provided ID
  result = api_instance.delete_event_rsvp(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->delete_event_rsvp: #{e}"
end
```

#### Using the delete_event_rsvp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_event_rsvp_with_http_info(id, opts)

```ruby
begin
  # Delete an event rsvp with provided ID
  data, status_code, headers = api_instance.delete_event_rsvp_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->delete_event_rsvp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup  | [optional] |
| **fields_event_rsvps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_rsvps

> <EventRsvpIndexResponse> list_event_rsvps(opts)

List all event rsvps in a nation

Lists all event RSVPs in a nation

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventRsvpsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup 
  fields_event_rsvps: 'fields_event_rsvps_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all event rsvps in a nation
  result = api_instance.list_event_rsvps(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->list_event_rsvps: #{e}"
end
```

#### Using the list_event_rsvps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventRsvpIndexResponse>, Integer, Hash)> list_event_rsvps_with_http_info(opts)

```ruby
begin
  # List all event rsvps in a nation
  data, status_code, headers = api_instance.list_event_rsvps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventRsvpIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->list_event_rsvps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup  | [optional] |
| **fields_event_rsvps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**EventRsvpIndexResponse**](EventRsvpIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_event_rsvp

> <EventRsvpShowResponse> show_event_rsvp(id, opts)

Show event rsvp with provided ID

Show the event RSVP matching the provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventRsvpsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup 
  fields_event_rsvps: 'fields_event_rsvps_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show event rsvp with provided ID
  result = api_instance.show_event_rsvp(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->show_event_rsvp: #{e}"
end
```

#### Using the show_event_rsvp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventRsvpShowResponse>, Integer, Hash)> show_event_rsvp_with_http_info(id, opts)

```ruby
begin
  # Show event rsvp with provided ID
  data, status_code, headers = api_instance.show_event_rsvp_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventRsvpShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->show_event_rsvp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup  | [optional] |
| **fields_event_rsvps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EventRsvpShowResponse**](EventRsvpShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_event_rsvp

> <EventRsvpShowResponse> update_event_rsvp(id, opts)

Update an existing event rsvp

Updates an existing event RSVP. Note that first name, last name, and email are NOT propagated to the event RSVP's signup. You must update the signup via a sidepost payload, or update the signup directly via the signup resource.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::EventRsvpsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup 
  fields_event_rsvps: 'fields_event_rsvps_example', # String | Comma-delimited list of attributes to only return in the response
  event_rsvp_update_request: NationbuilderClient::EventRsvpUpdateRequest.new # EventRsvpUpdateRequest | 
}

begin
  # Update an existing event rsvp
  result = api_instance.update_event_rsvp(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->update_event_rsvp: #{e}"
end
```

#### Using the update_event_rsvp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventRsvpShowResponse>, Integer, Hash)> update_event_rsvp_with_http_info(id, opts)

```ruby
begin
  # Update an existing event rsvp
  data, status_code, headers = api_instance.update_event_rsvp_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventRsvpShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling EventRsvpsApi->update_event_rsvp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, event, event_ticket_level, recruiter, signup  | [optional] |
| **fields_event_rsvps** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **event_rsvp_update_request** | [**EventRsvpUpdateRequest**](EventRsvpUpdateRequest.md) |  | [optional] |

### Return type

[**EventRsvpShowResponse**](EventRsvpShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

