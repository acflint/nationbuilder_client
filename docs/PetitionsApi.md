# NationbuilderClient::PetitionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_petition**](PetitionsApi.md#create_petition) | **POST** /api/v2/petitions | Create a petition |
| [**delete_petition**](PetitionsApi.md#delete_petition) | **DELETE** /api/v2/petitions/{id} | Delete petition with provided ID |
| [**list_petitions**](PetitionsApi.md#list_petitions) | **GET** /api/v2/petitions | List all petitions in a nation |
| [**show_petition**](PetitionsApi.md#show_petition) | **GET** /api/v2/petitions/{id} | Show petition with provided ID |
| [**update_petition**](PetitionsApi.md#update_petition) | **PATCH** /api/v2/petitions/{id} | Update an existing petition |


## create_petition

> <PetitionShowResponseWithRequiredSidepost> create_petition(opts)

Create a petition

Creates a petition from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page 
  fields_petitions: 'fields_petitions_example', # String | Comma-delimited list of attributes to only return in the response
  petition_create_request: NationbuilderClient::PetitionCreateRequest.new # PetitionCreateRequest | 
}

begin
  # Create a petition
  result = api_instance.create_petition(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->create_petition: #{e}"
end
```

#### Using the create_petition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionShowResponseWithRequiredSidepost>, Integer, Hash)> create_petition_with_http_info(opts)

```ruby
begin
  # Create a petition
  data, status_code, headers = api_instance.create_petition_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionShowResponseWithRequiredSidepost>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->create_petition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page  | [optional] |
| **fields_petitions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **petition_create_request** | [**PetitionCreateRequest**](PetitionCreateRequest.md) |  | [optional] |

### Return type

[**PetitionShowResponseWithRequiredSidepost**](PetitionShowResponseWithRequiredSidepost.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_petition

> <EmptyMetaResponse> delete_petition(id, opts)

Delete petition with provided ID

Delete petition with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: petition_signatures, page 
  fields_petitions: 'fields_petitions_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete petition with provided ID
  result = api_instance.delete_petition(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->delete_petition: #{e}"
end
```

#### Using the delete_petition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_petition_with_http_info(id, opts)

```ruby
begin
  # Delete petition with provided ID
  data, status_code, headers = api_instance.delete_petition_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->delete_petition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: petition_signatures, page  | [optional] |
| **fields_petitions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_petitions

> <PetitionIndexResponse> list_petitions(opts)

List all petitions in a nation

Lists all petitions

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page 
  fields_petitions: 'fields_petitions_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all petitions in a nation
  result = api_instance.list_petitions(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->list_petitions: #{e}"
end
```

#### Using the list_petitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionIndexResponse>, Integer, Hash)> list_petitions_with_http_info(opts)

```ruby
begin
  # List all petitions in a nation
  data, status_code, headers = api_instance.list_petitions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->list_petitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page  | [optional] |
| **fields_petitions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PetitionIndexResponse**](PetitionIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_petition

> <PetitionShowResponse> show_petition(id, opts)

Show petition with provided ID

Show petition with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: petition_signatures, page 
  fields_petitions: 'fields_petitions_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show petition with provided ID
  result = api_instance.show_petition(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->show_petition: #{e}"
end
```

#### Using the show_petition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionShowResponse>, Integer, Hash)> show_petition_with_http_info(id, opts)

```ruby
begin
  # Show petition with provided ID
  data, status_code, headers = api_instance.show_petition_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->show_petition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: petition_signatures, page  | [optional] |
| **fields_petitions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PetitionShowResponse**](PetitionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_petition

> <PetitionShowResponse> update_petition(id, opts)

Update an existing petition

Updates an existing petition

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: petition_signatures, page 
  fields_petitions: 'fields_petitions_example', # String | Comma-delimited list of attributes to only return in the response
  petition_update_request: NationbuilderClient::PetitionUpdateRequest.new # PetitionUpdateRequest | 
}

begin
  # Update an existing petition
  result = api_instance.update_petition(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->update_petition: #{e}"
end
```

#### Using the update_petition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionShowResponse>, Integer, Hash)> update_petition_with_http_info(id, opts)

```ruby
begin
  # Update an existing petition
  data, status_code, headers = api_instance.update_petition_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionsApi->update_petition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: petition_signatures, page  | [optional] |
| **fields_petitions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **petition_update_request** | [**PetitionUpdateRequest**](PetitionUpdateRequest.md) |  | [optional] |

### Return type

[**PetitionShowResponse**](PetitionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

