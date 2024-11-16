# NationbuilderClient::BroadcastersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_broadcasters**](BroadcastersApi.md#list_broadcasters) | **GET** /api/v2/broadcasters | List all broadcasters in a nation |
| [**show_broadcaster**](BroadcastersApi.md#show_broadcaster) | **GET** /api/v2/broadcasters/{id} | Show broadcaster with provided ID |


## list_broadcasters

> <BroadcasterIndexResponse> list_broadcasters(opts)

List all broadcasters in a nation

Lists all broadcasters

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::BroadcastersApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person 
  fields_broadcasters: 'fields_broadcasters_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all broadcasters in a nation
  result = api_instance.list_broadcasters(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BroadcastersApi->list_broadcasters: #{e}"
end
```

#### Using the list_broadcasters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BroadcasterIndexResponse>, Integer, Hash)> list_broadcasters_with_http_info(opts)

```ruby
begin
  # List all broadcasters in a nation
  data, status_code, headers = api_instance.list_broadcasters_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BroadcasterIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BroadcastersApi->list_broadcasters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person  | [optional] |
| **fields_broadcasters** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**BroadcasterIndexResponse**](BroadcasterIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_broadcaster

> <BroadcasterShowResponse> show_broadcaster(id, opts)

Show broadcaster with provided ID

Show broadcaster with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::BroadcastersApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person, mailings, signups 
  fields_broadcasters: 'fields_broadcasters_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show broadcaster with provided ID
  result = api_instance.show_broadcaster(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BroadcastersApi->show_broadcaster: #{e}"
end
```

#### Using the show_broadcaster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BroadcasterShowResponse>, Integer, Hash)> show_broadcaster_with_http_info(id, opts)

```ruby
begin
  # Show broadcaster with provided ID
  data, status_code, headers = api_instance.show_broadcaster_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BroadcasterShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BroadcastersApi->show_broadcaster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person, mailings, signups  | [optional] |
| **fields_broadcasters** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**BroadcasterShowResponse**](BroadcasterShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

