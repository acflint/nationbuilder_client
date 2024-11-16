# NationbuilderClient::CustomFieldsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_custom_fields**](CustomFieldsApi.md#list_custom_fields) | **GET** /api/v2/custom_fields | List all custom fields in a nation |
| [**show_custom_field**](CustomFieldsApi.md#show_custom_field) | **GET** /api/v2/custom_fields/{id} | Show custom field with provided ID |


## list_custom_fields

> <CustomFieldIndexResponse> list_custom_fields(opts)

List all custom fields in a nation

Lists all custom fields

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::CustomFieldsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_custom_fields: 'fields_custom_fields_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all custom fields in a nation
  result = api_instance.list_custom_fields(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields: #{e}"
end
```

#### Using the list_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldIndexResponse>, Integer, Hash)> list_custom_fields_with_http_info(opts)

```ruby
begin
  # List all custom fields in a nation
  data, status_code, headers = api_instance.list_custom_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_custom_fields** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**CustomFieldIndexResponse**](CustomFieldIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_custom_field

> <CustomFieldShowResponse> show_custom_field(id, opts)

Show custom field with provided ID

Show custom field with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::CustomFieldsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_custom_fields: 'fields_custom_fields_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show custom field with provided ID
  result = api_instance.show_custom_field(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling CustomFieldsApi->show_custom_field: #{e}"
end
```

#### Using the show_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldShowResponse>, Integer, Hash)> show_custom_field_with_http_info(id, opts)

```ruby
begin
  # Show custom field with provided ID
  data, status_code, headers = api_instance.show_custom_field_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling CustomFieldsApi->show_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_custom_fields** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**CustomFieldShowResponse**](CustomFieldShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

