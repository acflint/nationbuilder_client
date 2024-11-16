# NationbuilderClient::SignupTaggingsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_signup_tagging**](SignupTaggingsApi.md#create_signup_tagging) | **POST** /api/v2/signup_taggings | Create a signup tagging |
| [**delete_signup_tagging**](SignupTaggingsApi.md#delete_signup_tagging) | **DELETE** /api/v2/signup_taggings/{id} | Delete signup tag with provided ID |
| [**list_signup_taggings**](SignupTaggingsApi.md#list_signup_taggings) | **GET** /api/v2/signup_taggings | List all signup taggings in a nation |
| [**show_signup_tagging**](SignupTaggingsApi.md#show_signup_tagging) | **GET** /api/v2/signup_taggings/{id} | Show signup tagging with provided ID |


## create_signup_tagging

> <SignupTaggingShowResponse> create_signup_tagging(opts)

Create a signup tagging

Creates a signup tagging from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTaggingsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup 
  fields_signup_taggings: 'fields_signup_taggings_example', # String | Comma-delimited list of attributes to only return in the response
  signup_tagging_create_request: NationbuilderClient::SignupTaggingCreateRequest.new # SignupTaggingCreateRequest | 
}

begin
  # Create a signup tagging
  result = api_instance.create_signup_tagging(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->create_signup_tagging: #{e}"
end
```

#### Using the create_signup_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupTaggingShowResponse>, Integer, Hash)> create_signup_tagging_with_http_info(opts)

```ruby
begin
  # Create a signup tagging
  data, status_code, headers = api_instance.create_signup_tagging_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupTaggingShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->create_signup_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup  | [optional] |
| **fields_signup_taggings** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **signup_tagging_create_request** | [**SignupTaggingCreateRequest**](SignupTaggingCreateRequest.md) |  | [optional] |

### Return type

[**SignupTaggingShowResponse**](SignupTaggingShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_signup_tagging

> <EmptyMetaResponse> delete_signup_tagging(id, opts)

Delete signup tag with provided ID

Delete Signup Tagging with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTaggingsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup 
  fields_signup_taggings: 'fields_signup_taggings_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete signup tag with provided ID
  result = api_instance.delete_signup_tagging(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->delete_signup_tagging: #{e}"
end
```

#### Using the delete_signup_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_signup_tagging_with_http_info(id, opts)

```ruby
begin
  # Delete signup tag with provided ID
  data, status_code, headers = api_instance.delete_signup_tagging_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->delete_signup_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup  | [optional] |
| **fields_signup_taggings** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_signup_taggings

> <SignupTaggingIndexResponse> list_signup_taggings(opts)

List all signup taggings in a nation

Lists all signup taggings

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTaggingsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup 
  fields_signup_taggings: 'fields_signup_taggings_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all signup taggings in a nation
  result = api_instance.list_signup_taggings(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->list_signup_taggings: #{e}"
end
```

#### Using the list_signup_taggings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupTaggingIndexResponse>, Integer, Hash)> list_signup_taggings_with_http_info(opts)

```ruby
begin
  # List all signup taggings in a nation
  data, status_code, headers = api_instance.list_signup_taggings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupTaggingIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->list_signup_taggings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup  | [optional] |
| **fields_signup_taggings** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SignupTaggingIndexResponse**](SignupTaggingIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_signup_tagging

> <SignupTaggingShowResponse> show_signup_tagging(id, opts)

Show signup tagging with provided ID

Show signup tagging with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupTaggingsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup 
  fields_signup_taggings: 'fields_signup_taggings_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show signup tagging with provided ID
  result = api_instance.show_signup_tagging(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->show_signup_tagging: #{e}"
end
```

#### Using the show_signup_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupTaggingShowResponse>, Integer, Hash)> show_signup_tagging_with_http_info(id, opts)

```ruby
begin
  # Show signup tagging with provided ID
  data, status_code, headers = api_instance.show_signup_tagging_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupTaggingShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupTaggingsApi->show_signup_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: tag, signup  | [optional] |
| **fields_signup_taggings** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**SignupTaggingShowResponse**](SignupTaggingShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

