# NationbuilderClient::PrecinctsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_precinct**](PrecinctsApi.md#create_precinct) | **POST** /api/v2/precincts | Create a precinct |
| [**delete_precinct**](PrecinctsApi.md#delete_precinct) | **DELETE** /api/v2/precincts/{id} | Delete precinct with provided ID |
| [**list_precincts**](PrecinctsApi.md#list_precincts) | **GET** /api/v2/precincts | List all precincts in a nation |
| [**show_precinct**](PrecinctsApi.md#show_precinct) | **GET** /api/v2/precincts/{id} | Show precinct with provided ID |
| [**update_precinct**](PrecinctsApi.md#update_precinct) | **PATCH** /api/v2/precincts/{id} | Update an existing precinct |


## create_precinct

> <PrecinctShowResponse> create_precinct(opts)

Create a precinct

Creates a precinct from given data.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PrecinctsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person 
  fields_precincts: 'fields_precincts_example', # String | Comma-delimited list of attributes to only return in the response
  precinct_create_request: NationbuilderClient::PrecinctCreateRequest.new # PrecinctCreateRequest | 
}

begin
  # Create a precinct
  result = api_instance.create_precinct(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->create_precinct: #{e}"
end
```

#### Using the create_precinct_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrecinctShowResponse>, Integer, Hash)> create_precinct_with_http_info(opts)

```ruby
begin
  # Create a precinct
  data, status_code, headers = api_instance.create_precinct_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrecinctShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->create_precinct_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person  | [optional] |
| **fields_precincts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **precinct_create_request** | [**PrecinctCreateRequest**](PrecinctCreateRequest.md) |  | [optional] |

### Return type

[**PrecinctShowResponse**](PrecinctShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_precinct

> <EmptyMetaResponse> delete_precinct(id, opts)

Delete precinct with provided ID

Delete precinct with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PrecinctsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, signups 
  fields_precincts: 'fields_precincts_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete precinct with provided ID
  result = api_instance.delete_precinct(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->delete_precinct: #{e}"
end
```

#### Using the delete_precinct_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_precinct_with_http_info(id, opts)

```ruby
begin
  # Delete precinct with provided ID
  data, status_code, headers = api_instance.delete_precinct_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->delete_precinct_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, signups  | [optional] |
| **fields_precincts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_precincts

> <PrecinctIndexResponse> list_precincts(opts)

List all precincts in a nation

Lists all precincts

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PrecinctsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person 
  fields_precincts: 'fields_precincts_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all precincts in a nation
  result = api_instance.list_precincts(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->list_precincts: #{e}"
end
```

#### Using the list_precincts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrecinctIndexResponse>, Integer, Hash)> list_precincts_with_http_info(opts)

```ruby
begin
  # List all precincts in a nation
  data, status_code, headers = api_instance.list_precincts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrecinctIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->list_precincts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person  | [optional] |
| **fields_precincts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PrecinctIndexResponse**](PrecinctIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_precinct

> <PrecinctShowResponse> show_precinct(id, opts)

Show precinct with provided ID

Show precinct with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PrecinctsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, signups 
  fields_precincts: 'fields_precincts_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show precinct with provided ID
  result = api_instance.show_precinct(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->show_precinct: #{e}"
end
```

#### Using the show_precinct_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrecinctShowResponse>, Integer, Hash)> show_precinct_with_http_info(id, opts)

```ruby
begin
  # Show precinct with provided ID
  data, status_code, headers = api_instance.show_precinct_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrecinctShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->show_precinct_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, signups  | [optional] |
| **fields_precincts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PrecinctShowResponse**](PrecinctShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_precinct

> <PrecinctShowResponse> update_precinct(id, opts)

Update an existing precinct

Updates an existing precinct.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PrecinctsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, signups 
  fields_precincts: 'fields_precincts_example', # String | Comma-delimited list of attributes to only return in the response
  precinct_update_request: NationbuilderClient::PrecinctUpdateRequest.new # PrecinctUpdateRequest | 
}

begin
  # Update an existing precinct
  result = api_instance.update_precinct(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->update_precinct: #{e}"
end
```

#### Using the update_precinct_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrecinctShowResponse>, Integer, Hash)> update_precinct_with_http_info(id, opts)

```ruby
begin
  # Update an existing precinct
  data, status_code, headers = api_instance.update_precinct_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrecinctShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PrecinctsApi->update_precinct_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, signups  | [optional] |
| **fields_precincts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **precinct_update_request** | [**PrecinctUpdateRequest**](PrecinctUpdateRequest.md) |  | [optional] |

### Return type

[**PrecinctShowResponse**](PrecinctShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

