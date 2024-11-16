# NationbuilderClient::BallotsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ballot**](BallotsApi.md#create_ballot) | **POST** /api/v2/ballots | Create a ballot |
| [**delete_ballot**](BallotsApi.md#delete_ballot) | **DELETE** /api/v2/ballots/{id} | Delete ballot with provided ID |
| [**list_ballots**](BallotsApi.md#list_ballots) | **GET** /api/v2/ballots | List all ballots in a nation |
| [**show_ballot**](BallotsApi.md#show_ballot) | **GET** /api/v2/ballots/{id} | Show ballot with provided ID |
| [**update_ballot**](BallotsApi.md#update_ballot) | **PATCH** /api/v2/ballots/{id} | Update an existing ballot |


## create_ballot

> <BallotShowResponse> create_ballot(opts)

Create a ballot

Creates a ballot from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::BallotsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter 
  fields_ballots: 'fields_ballots_example', # String | Comma-delimited list of attributes to only return in the response
  ballot_create_request: NationbuilderClient::BallotCreateRequest.new # BallotCreateRequest | 
}

begin
  # Create a ballot
  result = api_instance.create_ballot(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->create_ballot: #{e}"
end
```

#### Using the create_ballot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BallotShowResponse>, Integer, Hash)> create_ballot_with_http_info(opts)

```ruby
begin
  # Create a ballot
  data, status_code, headers = api_instance.create_ballot_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BallotShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->create_ballot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter  | [optional] |
| **fields_ballots** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **ballot_create_request** | [**BallotCreateRequest**](BallotCreateRequest.md) |  | [optional] |

### Return type

[**BallotShowResponse**](BallotShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ballot

> <EmptyMetaResponse> delete_ballot(id, opts)

Delete ballot with provided ID

Delete ballot with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::BallotsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter 
  fields_ballots: 'fields_ballots_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete ballot with provided ID
  result = api_instance.delete_ballot(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->delete_ballot: #{e}"
end
```

#### Using the delete_ballot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_ballot_with_http_info(id, opts)

```ruby
begin
  # Delete ballot with provided ID
  data, status_code, headers = api_instance.delete_ballot_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->delete_ballot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter  | [optional] |
| **fields_ballots** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ballots

> <BallotIndexResponse> list_ballots(opts)

List all ballots in a nation

Lists all ballots

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::BallotsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter 
  fields_ballots: 'fields_ballots_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all ballots in a nation
  result = api_instance.list_ballots(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->list_ballots: #{e}"
end
```

#### Using the list_ballots_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BallotIndexResponse>, Integer, Hash)> list_ballots_with_http_info(opts)

```ruby
begin
  # List all ballots in a nation
  data, status_code, headers = api_instance.list_ballots_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BallotIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->list_ballots_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter  | [optional] |
| **fields_ballots** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**BallotIndexResponse**](BallotIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_ballot

> <BallotShowResponse> show_ballot(id, opts)

Show ballot with provided ID

Show ballot with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::BallotsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter 
  fields_ballots: 'fields_ballots_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show ballot with provided ID
  result = api_instance.show_ballot(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->show_ballot: #{e}"
end
```

#### Using the show_ballot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BallotShowResponse>, Integer, Hash)> show_ballot_with_http_info(id, opts)

```ruby
begin
  # Show ballot with provided ID
  data, status_code, headers = api_instance.show_ballot_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BallotShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->show_ballot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter  | [optional] |
| **fields_ballots** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**BallotShowResponse**](BallotShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ballot

> <BallotShowResponse> update_ballot(id, opts)

Update an existing ballot

Updates an existing ballot

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::BallotsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter 
  fields_ballots: 'fields_ballots_example', # String | Comma-delimited list of attributes to only return in the response
  ballot_update_request: NationbuilderClient::BallotUpdateRequest.new # BallotUpdateRequest | 
}

begin
  # Update an existing ballot
  result = api_instance.update_ballot(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->update_ballot: #{e}"
end
```

#### Using the update_ballot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BallotShowResponse>, Integer, Hash)> update_ballot_with_http_info(id, opts)

```ruby
begin
  # Update an existing ballot
  data, status_code, headers = api_instance.update_ballot_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BallotShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling BallotsApi->update_ballot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: election, voter  | [optional] |
| **fields_ballots** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **ballot_update_request** | [**BallotUpdateRequest**](BallotUpdateRequest.md) |  | [optional] |

### Return type

[**BallotShowResponse**](BallotShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

