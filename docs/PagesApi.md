# NationbuilderClient::PagesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_page**](PagesApi.md#create_page) | **POST** /api/v2/pages | Create a page |
| [**delete_page**](PagesApi.md#delete_page) | **DELETE** /api/v2/pages/{id} | Delete page with provided ID |
| [**list_pages**](PagesApi.md#list_pages) | **GET** /api/v2/pages | List all pages in a nation |
| [**show_page**](PagesApi.md#show_page) | **GET** /api/v2/pages/{id} | Show page with provided ID |
| [**update_page**](PagesApi.md#update_page) | **PATCH** /api/v2/pages/{id} | Update an existing page |


## create_page

> <PageShowResponse> create_page(opts)

Create a page

Creates a page from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PagesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site 
  fields_pages: 'fields_pages_example', # String | Comma-delimited list of attributes to only return in the response
  page_create_request: NationbuilderClient::PageCreateRequest.new # PageCreateRequest | 
}

begin
  # Create a page
  result = api_instance.create_page(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->create_page: #{e}"
end
```

#### Using the create_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageShowResponse>, Integer, Hash)> create_page_with_http_info(opts)

```ruby
begin
  # Create a page
  data, status_code, headers = api_instance.create_page_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->create_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site  | [optional] |
| **fields_pages** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_create_request** | [**PageCreateRequest**](PageCreateRequest.md) |  | [optional] |

### Return type

[**PageShowResponse**](PageShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_page

> <EmptyMetaResponse> delete_page(id, opts)

Delete page with provided ID

Delete page with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PagesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types 
  fields_pages: 'fields_pages_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete page with provided ID
  result = api_instance.delete_page(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->delete_page: #{e}"
end
```

#### Using the delete_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_page_with_http_info(id, opts)

```ruby
begin
  # Delete page with provided ID
  data, status_code, headers = api_instance.delete_page_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->delete_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types  | [optional] |
| **fields_pages** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pages

> <PageIndexResponse> list_pages(opts)

List all pages in a nation

Lists all pages

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PagesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site 
  fields_pages: 'fields_pages_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all pages in a nation
  result = api_instance.list_pages(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->list_pages: #{e}"
end
```

#### Using the list_pages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageIndexResponse>, Integer, Hash)> list_pages_with_http_info(opts)

```ruby
begin
  # List all pages in a nation
  data, status_code, headers = api_instance.list_pages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->list_pages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site  | [optional] |
| **fields_pages** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PageIndexResponse**](PageIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_page

> <PageShowResponse> show_page(id, opts)

Show page with provided ID

Show page with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PagesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types 
  fields_pages: 'fields_pages_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show page with provided ID
  result = api_instance.show_page(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->show_page: #{e}"
end
```

#### Using the show_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageShowResponse>, Integer, Hash)> show_page_with_http_info(id, opts)

```ruby
begin
  # Show page with provided ID
  data, status_code, headers = api_instance.show_page_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->show_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types  | [optional] |
| **fields_pages** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PageShowResponse**](PageShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_page

> <PageShowResponse> update_page(id, opts)

Update an existing page

Updates an existing page

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PagesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types 
  fields_pages: 'fields_pages_example', # String | Comma-delimited list of attributes to only return in the response
  page_update_request: NationbuilderClient::PageUpdateRequest.new # PageUpdateRequest | 
}

begin
  # Update an existing page
  result = api_instance.update_page(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->update_page: #{e}"
end
```

#### Using the update_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageShowResponse>, Integer, Hash)> update_page_with_http_info(id, opts)

```ruby
begin
  # Update an existing page
  data, status_code, headers = api_instance.update_page_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PagesApi->update_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types  | [optional] |
| **fields_pages** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_update_request** | [**PageUpdateRequest**](PageUpdateRequest.md) |  | [optional] |

### Return type

[**PageShowResponse**](PageShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

