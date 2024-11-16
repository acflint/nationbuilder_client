# NationbuilderClient::SignupTagsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_signup_tag**](SignupTagsApi.md#create_signup_tag) | **POST** /api/v2/signup_tags | Create a signup tag |
| [**delete_signup_tag**](SignupTagsApi.md#delete_signup_tag) | **DELETE** /api/v2/signup_tags/{id} | Delete signup tag with provided ID |
| [**list_signup_tags**](SignupTagsApi.md#list_signup_tags) | **GET** /api/v2/signup_tags | List all signup tags in a nation |
| [**show_signup_tag**](SignupTagsApi.md#show_signup_tag) | **GET** /api/v2/signup_tags/{id} | Show signup tag with provided ID |
| [**update_signup_tag**](SignupTagsApi.md#update_signup_tag) | **PATCH** /api/v2/signup_tags/{id} | Update an existing signup tag |


## create_signup_tag

> <SignupTagShowResponse> create_signup_tag(opts)

Create a signup tag

Creates a signup tag from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTagsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_signup_tags: 'fields_signup_tags_example', # String | Comma-delimited list of attributes to only return in the response
  signup_tag_create_request: NationbuilderClient::SignupTagCreateRequest.new # SignupTagCreateRequest | 
}

begin
  # Create a signup tag
  result = api_instance.create_signup_tag(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->create_signup_tag: #{e}"
end
```

#### Using the create_signup_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupTagShowResponse>, Integer, Hash)> create_signup_tag_with_http_info(opts)

```ruby
begin
  # Create a signup tag
  data, status_code, headers = api_instance.create_signup_tag_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupTagShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->create_signup_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_signup_tags** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **signup_tag_create_request** | [**SignupTagCreateRequest**](SignupTagCreateRequest.md) |  | [optional] |

### Return type

[**SignupTagShowResponse**](SignupTagShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_signup_tag

> <EmptyMetaResponse> delete_signup_tag(id, opts)

Delete signup tag with provided ID

Delete signup_tag with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTagsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups 
  fields_signup_tags: 'fields_signup_tags_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete signup tag with provided ID
  result = api_instance.delete_signup_tag(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->delete_signup_tag: #{e}"
end
```

#### Using the delete_signup_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_signup_tag_with_http_info(id, opts)

```ruby
begin
  # Delete signup tag with provided ID
  data, status_code, headers = api_instance.delete_signup_tag_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->delete_signup_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups  | [optional] |
| **fields_signup_tags** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_signup_tags

> <SignupTagIndexResponse> list_signup_tags(opts)

List all signup tags in a nation

Lists all signup tags

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTagsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_signup_tags: 'fields_signup_tags_example', # String | Comma-delimited list of attributes to only return in the response
  filter_signup_id: 'filter_signup_id_example', # String | 
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all signup tags in a nation
  result = api_instance.list_signup_tags(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->list_signup_tags: #{e}"
end
```

#### Using the list_signup_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupTagIndexResponse>, Integer, Hash)> list_signup_tags_with_http_info(opts)

```ruby
begin
  # List all signup tags in a nation
  data, status_code, headers = api_instance.list_signup_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupTagIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->list_signup_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_signup_tags** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **filter_signup_id** | **String** |  | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SignupTagIndexResponse**](SignupTagIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_signup_tag

> <SignupTagShowResponse> show_signup_tag(id, opts)

Show signup tag with provided ID

Show signup tag with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTagsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups 
  fields_signup_tags: 'fields_signup_tags_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show signup tag with provided ID
  result = api_instance.show_signup_tag(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->show_signup_tag: #{e}"
end
```

#### Using the show_signup_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupTagShowResponse>, Integer, Hash)> show_signup_tag_with_http_info(id, opts)

```ruby
begin
  # Show signup tag with provided ID
  data, status_code, headers = api_instance.show_signup_tag_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupTagShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->show_signup_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups  | [optional] |
| **fields_signup_tags** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**SignupTagShowResponse**](SignupTagShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_signup_tag

> <SignupTagShowResponse> update_signup_tag(id, opts)

Update an existing signup tag

Updates an existing signup tag

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTagsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups 
  fields_signup_tags: 'fields_signup_tags_example', # String | Comma-delimited list of attributes to only return in the response
  signup_tag_update_request: NationbuilderClient::SignupTagUpdateRequest.new # SignupTagUpdateRequest | 
}

begin
  # Update an existing signup tag
  result = api_instance.update_signup_tag(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->update_signup_tag: #{e}"
end
```

#### Using the update_signup_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupTagShowResponse>, Integer, Hash)> update_signup_tag_with_http_info(id, opts)

```ruby
begin
  # Update an existing signup tag
  data, status_code, headers = api_instance.update_signup_tag_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupTagShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTagsApi->update_signup_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups  | [optional] |
| **fields_signup_tags** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **signup_tag_update_request** | [**SignupTagUpdateRequest**](SignupTagUpdateRequest.md) |  | [optional] |

### Return type

[**SignupTagShowResponse**](SignupTagShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

