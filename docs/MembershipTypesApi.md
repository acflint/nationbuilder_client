# NationbuilderClient::MembershipTypesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_membership_type**](MembershipTypesApi.md#create_membership_type) | **POST** /api/v2/membership_types | Create a membership type |
| [**delete_membership_type**](MembershipTypesApi.md#delete_membership_type) | **DELETE** /api/v2/membership_types/{id} | Delete membership type with provided ID |
| [**list_membership_types**](MembershipTypesApi.md#list_membership_types) | **GET** /api/v2/membership_types | List all membership types in a nation |
| [**show_membership_type**](MembershipTypesApi.md#show_membership_type) | **GET** /api/v2/membership_types/{id} | Show membership type with provided ID |
| [**update_membership_type**](MembershipTypesApi.md#update_membership_type) | **PATCH** /api/v2/membership_types/{id} | Update an existing membership type |


## create_membership_type

> <MembershipTypeShowResponse> create_membership_type(opts)

Create a membership type

Creates a membership type from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipTypesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page 
  fields_membership_types: 'fields_membership_types_example', # String | Comma-delimited list of attributes to only return in the response
  membership_type_create_request: NationbuilderClient::MembershipTypeCreateRequest.new # MembershipTypeCreateRequest | 
}

begin
  # Create a membership type
  result = api_instance.create_membership_type(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->create_membership_type: #{e}"
end
```

#### Using the create_membership_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipTypeShowResponse>, Integer, Hash)> create_membership_type_with_http_info(opts)

```ruby
begin
  # Create a membership type
  data, status_code, headers = api_instance.create_membership_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipTypeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->create_membership_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page  | [optional] |
| **fields_membership_types** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **membership_type_create_request** | [**MembershipTypeCreateRequest**](MembershipTypeCreateRequest.md) |  | [optional] |

### Return type

[**MembershipTypeShowResponse**](MembershipTypeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_membership_type

> <EmptyMetaResponse> delete_membership_type(id, opts)

Delete membership type with provided ID

Delete membership type with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipTypesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships 
  fields_membership_types: 'fields_membership_types_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete membership type with provided ID
  result = api_instance.delete_membership_type(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->delete_membership_type: #{e}"
end
```

#### Using the delete_membership_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_membership_type_with_http_info(id, opts)

```ruby
begin
  # Delete membership type with provided ID
  data, status_code, headers = api_instance.delete_membership_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->delete_membership_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships  | [optional] |
| **fields_membership_types** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_membership_types

> <MembershipTypeIndexResponse> list_membership_types(opts)

List all membership types in a nation

Lists all membership types

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipTypesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page 
  fields_membership_types: 'fields_membership_types_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all membership types in a nation
  result = api_instance.list_membership_types(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->list_membership_types: #{e}"
end
```

#### Using the list_membership_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipTypeIndexResponse>, Integer, Hash)> list_membership_types_with_http_info(opts)

```ruby
begin
  # List all membership types in a nation
  data, status_code, headers = api_instance.list_membership_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipTypeIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->list_membership_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page  | [optional] |
| **fields_membership_types** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**MembershipTypeIndexResponse**](MembershipTypeIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_membership_type

> <MembershipTypeShowResponse> show_membership_type(id, opts)

Show membership type with provided ID

Show membership type with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipTypesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships 
  fields_membership_types: 'fields_membership_types_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show membership type with provided ID
  result = api_instance.show_membership_type(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->show_membership_type: #{e}"
end
```

#### Using the show_membership_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipTypeShowResponse>, Integer, Hash)> show_membership_type_with_http_info(id, opts)

```ruby
begin
  # Show membership type with provided ID
  data, status_code, headers = api_instance.show_membership_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipTypeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->show_membership_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships  | [optional] |
| **fields_membership_types** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**MembershipTypeShowResponse**](MembershipTypeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_membership_type

> <MembershipTypeShowResponse> update_membership_type(id, opts)

Update an existing membership type

Updates an existing membership type

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipTypesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships 
  fields_membership_types: 'fields_membership_types_example', # String | Comma-delimited list of attributes to only return in the response
  membership_type_update_request: NationbuilderClient::MembershipTypeUpdateRequest.new # MembershipTypeUpdateRequest | 
}

begin
  # Update an existing membership type
  result = api_instance.update_membership_type(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->update_membership_type: #{e}"
end
```

#### Using the update_membership_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipTypeShowResponse>, Integer, Hash)> update_membership_type_with_http_info(id, opts)

```ruby
begin
  # Update an existing membership type
  data, status_code, headers = api_instance.update_membership_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipTypeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipTypesApi->update_membership_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships  | [optional] |
| **fields_membership_types** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **membership_type_update_request** | [**MembershipTypeUpdateRequest**](MembershipTypeUpdateRequest.md) |  | [optional] |

### Return type

[**MembershipTypeShowResponse**](MembershipTypeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

