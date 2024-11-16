# NationbuilderClient::PathHistoriesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_path_histories**](PathHistoriesApi.md#list_path_histories) | **GET** /api/v2/path_histories | List all path histories in a nation |
| [**show_path_history**](PathHistoriesApi.md#show_path_history) | **GET** /api/v2/path_histories/{id} | Show path history with provided ID |


## list_path_histories

> <PathHistoryIndexResponse> list_path_histories(opts)

List all path histories in a nation

Lists all path histories

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathHistoriesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: current_step_point_person, path_journey, path_journey_status_change, point_person, recruiter 
  fields_path_histories: 'fields_path_histories_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all path histories in a nation
  result = api_instance.list_path_histories(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathHistoriesApi->list_path_histories: #{e}"
end
```

#### Using the list_path_histories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathHistoryIndexResponse>, Integer, Hash)> list_path_histories_with_http_info(opts)

```ruby
begin
  # List all path histories in a nation
  data, status_code, headers = api_instance.list_path_histories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathHistoryIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathHistoriesApi->list_path_histories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: current_step_point_person, path_journey, path_journey_status_change, point_person, recruiter  | [optional] |
| **fields_path_histories** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PathHistoryIndexResponse**](PathHistoryIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_path_history

> <PathHistoryShowResponse> show_path_history(id, opts)

Show path history with provided ID

Show path history with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PathHistoriesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: current_step_point_person, path_journey, path_journey_status_change, point_person, recruiter 
  fields_path_histories: 'fields_path_histories_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show path history with provided ID
  result = api_instance.show_path_history(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathHistoriesApi->show_path_history: #{e}"
end
```

#### Using the show_path_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PathHistoryShowResponse>, Integer, Hash)> show_path_history_with_http_info(id, opts)

```ruby
begin
  # Show path history with provided ID
  data, status_code, headers = api_instance.show_path_history_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PathHistoryShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PathHistoriesApi->show_path_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: current_step_point_person, path_journey, path_journey_status_change, point_person, recruiter  | [optional] |
| **fields_path_histories** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PathHistoryShowResponse**](PathHistoryShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

