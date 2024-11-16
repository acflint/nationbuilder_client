# NationbuilderClient::PetitionSignaturesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_petition_signature**](PetitionSignaturesApi.md#create_petition_signature) | **POST** /api/v2/petition_signatures | Create a petition signature |
| [**delete_petition_signature**](PetitionSignaturesApi.md#delete_petition_signature) | **DELETE** /api/v2/petition_signatures/{id} | Delete petition signature with provided ID |
| [**list_petition_signatures**](PetitionSignaturesApi.md#list_petition_signatures) | **GET** /api/v2/petition_signatures | List all petition signatures in a nation |
| [**show_petition_signature**](PetitionSignaturesApi.md#show_petition_signature) | **GET** /api/v2/petition_signatures/{id} | Show petition signature with provided ID |
| [**update_petition_signature**](PetitionSignaturesApi.md#update_petition_signature) | **PATCH** /api/v2/petition_signatures/{id} | Update an existing petition signature |


## create_petition_signature

> <PetitionSignatureShowResponse> create_petition_signature(opts)

Create a petition signature

Creates a petition signature from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionSignaturesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup 
  fields_petition_signatures: 'fields_petition_signatures_example', # String | Comma-delimited list of attributes to only return in the response
  petition_signature_create_request: NationbuilderClient::PetitionSignatureCreateRequest.new # PetitionSignatureCreateRequest | 
}

begin
  # Create a petition signature
  result = api_instance.create_petition_signature(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->create_petition_signature: #{e}"
end
```

#### Using the create_petition_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionSignatureShowResponse>, Integer, Hash)> create_petition_signature_with_http_info(opts)

```ruby
begin
  # Create a petition signature
  data, status_code, headers = api_instance.create_petition_signature_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionSignatureShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->create_petition_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup  | [optional] |
| **fields_petition_signatures** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **petition_signature_create_request** | [**PetitionSignatureCreateRequest**](PetitionSignatureCreateRequest.md) |  | [optional] |

### Return type

[**PetitionSignatureShowResponse**](PetitionSignatureShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_petition_signature

> <EmptyMetaResponse> delete_petition_signature(id, opts)

Delete petition signature with provided ID

Delete petition signature with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionSignaturesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup 
  fields_petition_signatures: 'fields_petition_signatures_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete petition signature with provided ID
  result = api_instance.delete_petition_signature(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->delete_petition_signature: #{e}"
end
```

#### Using the delete_petition_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_petition_signature_with_http_info(id, opts)

```ruby
begin
  # Delete petition signature with provided ID
  data, status_code, headers = api_instance.delete_petition_signature_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->delete_petition_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup  | [optional] |
| **fields_petition_signatures** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_petition_signatures

> <PetitionSignatureIndexResponse> list_petition_signatures(opts)

List all petition signatures in a nation

Lists all petition signatures

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionSignaturesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup 
  fields_petition_signatures: 'fields_petition_signatures_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all petition signatures in a nation
  result = api_instance.list_petition_signatures(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->list_petition_signatures: #{e}"
end
```

#### Using the list_petition_signatures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionSignatureIndexResponse>, Integer, Hash)> list_petition_signatures_with_http_info(opts)

```ruby
begin
  # List all petition signatures in a nation
  data, status_code, headers = api_instance.list_petition_signatures_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionSignatureIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->list_petition_signatures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup  | [optional] |
| **fields_petition_signatures** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PetitionSignatureIndexResponse**](PetitionSignatureIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_petition_signature

> <PetitionSignatureShowResponse> show_petition_signature(id, opts)

Show petition signature with provided ID

Show petition signature with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionSignaturesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup 
  fields_petition_signatures: 'fields_petition_signatures_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show petition signature with provided ID
  result = api_instance.show_petition_signature(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->show_petition_signature: #{e}"
end
```

#### Using the show_petition_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionSignatureShowResponse>, Integer, Hash)> show_petition_signature_with_http_info(id, opts)

```ruby
begin
  # Show petition signature with provided ID
  data, status_code, headers = api_instance.show_petition_signature_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionSignatureShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->show_petition_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup  | [optional] |
| **fields_petition_signatures** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PetitionSignatureShowResponse**](PetitionSignatureShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_petition_signature

> <PetitionSignatureShowResponse> update_petition_signature(id, opts)

Update an existing petition signature

Updates an existing petition signature

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PetitionSignaturesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup 
  fields_petition_signatures: 'fields_petition_signatures_example', # String | Comma-delimited list of attributes to only return in the response
  petition_signature_update_request: NationbuilderClient::PetitionSignatureUpdateRequest.new # PetitionSignatureUpdateRequest | 
}

begin
  # Update an existing petition signature
  result = api_instance.update_petition_signature(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->update_petition_signature: #{e}"
end
```

#### Using the update_petition_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PetitionSignatureShowResponse>, Integer, Hash)> update_petition_signature_with_http_info(id, opts)

```ruby
begin
  # Update an existing petition signature
  data, status_code, headers = api_instance.update_petition_signature_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PetitionSignatureShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PetitionSignaturesApi->update_petition_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, petition, recruiter, signup  | [optional] |
| **fields_petition_signatures** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **petition_signature_update_request** | [**PetitionSignatureUpdateRequest**](PetitionSignatureUpdateRequest.md) |  | [optional] |

### Return type

[**PetitionSignatureShowResponse**](PetitionSignatureShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

