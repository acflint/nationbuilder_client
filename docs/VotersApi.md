# NationbuilderClient::VotersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_voter**](VotersApi.md#create_voter) | **POST** /api/v2/voters | Create a voter |
| [**delete_voter**](VotersApi.md#delete_voter) | **DELETE** /api/v2/voters/{id} | Delete voter with provided ID |
| [**list_voters**](VotersApi.md#list_voters) | **GET** /api/v2/voters | List all voters in a nation |
| [**show_voter**](VotersApi.md#show_voter) | **GET** /api/v2/voters/{id} | Show voter with provided ID |
| [**update_voter**](VotersApi.md#update_voter) | **PATCH** /api/v2/voters/{id} | Update an existing voter |


## create_voter

> <VoterShowResponse> create_voter(opts)

Create a voter

Creates a voter from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::VotersApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup 
  fields_voters: 'fields_voters_example', # String | Comma-delimited list of attributes to only return in the response
  voter_create_request: NationbuilderClient::VoterCreateRequest.new # VoterCreateRequest | 
}

begin
  # Create a voter
  result = api_instance.create_voter(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->create_voter: #{e}"
end
```

#### Using the create_voter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoterShowResponse>, Integer, Hash)> create_voter_with_http_info(opts)

```ruby
begin
  # Create a voter
  data, status_code, headers = api_instance.create_voter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoterShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->create_voter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup  | [optional] |
| **fields_voters** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **voter_create_request** | [**VoterCreateRequest**](VoterCreateRequest.md) |  | [optional] |

### Return type

[**VoterShowResponse**](VoterShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_voter

> <EmptyMetaResponse> delete_voter(id, opts)

Delete voter with provided ID

Delete voter with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::VotersApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, ballots 
  fields_voters: 'fields_voters_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete voter with provided ID
  result = api_instance.delete_voter(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->delete_voter: #{e}"
end
```

#### Using the delete_voter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_voter_with_http_info(id, opts)

```ruby
begin
  # Delete voter with provided ID
  data, status_code, headers = api_instance.delete_voter_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->delete_voter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, ballots  | [optional] |
| **fields_voters** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_voters

> <VoterIndexResponse> list_voters(opts)

List all voters in a nation

Lists all voters

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::VotersApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup 
  fields_voters: 'fields_voters_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all voters in a nation
  result = api_instance.list_voters(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->list_voters: #{e}"
end
```

#### Using the list_voters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoterIndexResponse>, Integer, Hash)> list_voters_with_http_info(opts)

```ruby
begin
  # List all voters in a nation
  data, status_code, headers = api_instance.list_voters_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoterIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->list_voters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup  | [optional] |
| **fields_voters** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**VoterIndexResponse**](VoterIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_voter

> <VoterShowResponse> show_voter(id, opts)

Show voter with provided ID

Show voter with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::VotersApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, ballots 
  fields_voters: 'fields_voters_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show voter with provided ID
  result = api_instance.show_voter(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->show_voter: #{e}"
end
```

#### Using the show_voter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoterShowResponse>, Integer, Hash)> show_voter_with_http_info(id, opts)

```ruby
begin
  # Show voter with provided ID
  data, status_code, headers = api_instance.show_voter_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoterShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->show_voter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, ballots  | [optional] |
| **fields_voters** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**VoterShowResponse**](VoterShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_voter

> <VoterShowResponse> update_voter(id, opts)

Update an existing voter

Updates an existing voter

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::VotersApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, ballots 
  fields_voters: 'fields_voters_example', # String | Comma-delimited list of attributes to only return in the response
  voter_update_request: NationbuilderClient::VoterUpdateRequest.new # VoterUpdateRequest | 
}

begin
  # Update an existing voter
  result = api_instance.update_voter(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->update_voter: #{e}"
end
```

#### Using the update_voter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoterShowResponse>, Integer, Hash)> update_voter_with_http_info(id, opts)

```ruby
begin
  # Update an existing voter
  data, status_code, headers = api_instance.update_voter_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoterShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling VotersApi->update_voter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, ballots  | [optional] |
| **fields_voters** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **voter_update_request** | [**VoterUpdateRequest**](VoterUpdateRequest.md) |  | [optional] |

### Return type

[**VoterShowResponse**](VoterShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

