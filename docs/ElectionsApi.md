# NationbuilderClient::ElectionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_election**](ElectionsApi.md#create_election) | **POST** /api/v2/elections | Create a election |
| [**delete_election**](ElectionsApi.md#delete_election) | **DELETE** /api/v2/elections/{id} | Delete election with provided ID |
| [**list_elections**](ElectionsApi.md#list_elections) | **GET** /api/v2/elections | List all elections in a nation |
| [**show_election**](ElectionsApi.md#show_election) | **GET** /api/v2/elections/{id} | Show election with provided ID |
| [**update_election**](ElectionsApi.md#update_election) | **PATCH** /api/v2/elections/{id} | Update an existing election |


## create_election

> <ElectionShowResponse> create_election(opts)

Create a election

Creates a election from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ElectionsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_elections: 'fields_elections_example', # String | Comma-delimited list of attributes to only return in the response
  election_create_request: NationbuilderClient::ElectionCreateRequest.new # ElectionCreateRequest | 
}

begin
  # Create a election
  result = api_instance.create_election(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->create_election: #{e}"
end
```

#### Using the create_election_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionShowResponse>, Integer, Hash)> create_election_with_http_info(opts)

```ruby
begin
  # Create a election
  data, status_code, headers = api_instance.create_election_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->create_election_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_elections** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **election_create_request** | [**ElectionCreateRequest**](ElectionCreateRequest.md) |  | [optional] |

### Return type

[**ElectionShowResponse**](ElectionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_election

> <EmptyMetaResponse> delete_election(id, opts)

Delete election with provided ID

Delete election with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ElectionsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: ballots 
  fields_elections: 'fields_elections_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete election with provided ID
  result = api_instance.delete_election(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->delete_election: #{e}"
end
```

#### Using the delete_election_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_election_with_http_info(id, opts)

```ruby
begin
  # Delete election with provided ID
  data, status_code, headers = api_instance.delete_election_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->delete_election_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: ballots  | [optional] |
| **fields_elections** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_elections

> <ElectionIndexResponse> list_elections(opts)

List all elections in a nation

Lists all elections

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ElectionsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_elections: 'fields_elections_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all elections in a nation
  result = api_instance.list_elections(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->list_elections: #{e}"
end
```

#### Using the list_elections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionIndexResponse>, Integer, Hash)> list_elections_with_http_info(opts)

```ruby
begin
  # List all elections in a nation
  data, status_code, headers = api_instance.list_elections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->list_elections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_elections** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**ElectionIndexResponse**](ElectionIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_election

> <ElectionShowResponse> show_election(id, opts)

Show election with provided ID

Show election with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ElectionsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: ballots 
  fields_elections: 'fields_elections_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show election with provided ID
  result = api_instance.show_election(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->show_election: #{e}"
end
```

#### Using the show_election_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionShowResponse>, Integer, Hash)> show_election_with_http_info(id, opts)

```ruby
begin
  # Show election with provided ID
  data, status_code, headers = api_instance.show_election_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->show_election_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: ballots  | [optional] |
| **fields_elections** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**ElectionShowResponse**](ElectionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_election

> <ElectionShowResponse> update_election(id, opts)

Update an existing election

Updates an existing election

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ElectionsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: ballots 
  fields_elections: 'fields_elections_example', # String | Comma-delimited list of attributes to only return in the response
  election_update_request: NationbuilderClient::ElectionUpdateRequest.new # ElectionUpdateRequest | 
}

begin
  # Update an existing election
  result = api_instance.update_election(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->update_election: #{e}"
end
```

#### Using the update_election_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectionShowResponse>, Integer, Hash)> update_election_with_http_info(id, opts)

```ruby
begin
  # Update an existing election
  data, status_code, headers = api_instance.update_election_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ElectionsApi->update_election_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: ballots  | [optional] |
| **fields_elections** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **election_update_request** | [**ElectionUpdateRequest**](ElectionUpdateRequest.md) |  | [optional] |

### Return type

[**ElectionShowResponse**](ElectionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

