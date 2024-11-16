# NationbuilderClient::AutomationsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**archive_automation**](AutomationsApi.md#archive_automation) | **PATCH** /api/v2/automations/{id}/archive | Archive an existing automation |
| [**create_automation**](AutomationsApi.md#create_automation) | **POST** /api/v2/automations | Create an automation |
| [**list_automations**](AutomationsApi.md#list_automations) | **GET** /api/v2/automations | List all automations in a nation |
| [**show_automations**](AutomationsApi.md#show_automations) | **GET** /api/v2/automations/{id} | Show automation with provided ID |
| [**update_automation**](AutomationsApi.md#update_automation) | **PATCH** /api/v2/automations/{id} | Update an existing automation |


## archive_automation

> <AutomationShowResponse> archive_automation(id, opts)

Archive an existing automation

Archives an existing automation

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example' # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: enrollments 
}

begin
  # Archive an existing automation
  result = api_instance.archive_automation(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->archive_automation: #{e}"
end
```

#### Using the archive_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationShowResponse>, Integer, Hash)> archive_automation_with_http_info(id, opts)

```ruby
begin
  # Archive an existing automation
  data, status_code, headers = api_instance.archive_automation_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->archive_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: enrollments  | [optional] |

### Return type

[**AutomationShowResponse**](AutomationShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_automation

> <AutomationShowResponse> create_automation(opts)

Create an automation

Creates an automation from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_automations: 'fields_automations_example', # String | Comma-delimited list of attributes to only return in the response
  automation_create_request: NationbuilderClient::AutomationCreateRequest.new # AutomationCreateRequest | 
}

begin
  # Create an automation
  result = api_instance.create_automation(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->create_automation: #{e}"
end
```

#### Using the create_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationShowResponse>, Integer, Hash)> create_automation_with_http_info(opts)

```ruby
begin
  # Create an automation
  data, status_code, headers = api_instance.create_automation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->create_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_automations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **automation_create_request** | [**AutomationCreateRequest**](AutomationCreateRequest.md) |  | [optional] |

### Return type

[**AutomationShowResponse**](AutomationShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_automations

> <AutomationIndexResponse> list_automations(opts)

List all automations in a nation

Lists all automations

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_automations: 'fields_automations_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_automations: 'extra_fields_automations_example', # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: total_enrollments_count, removed_enrollments_count, completed_enrollments_count, converted_enrollments_count, conversions_enabled
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all automations in a nation
  result = api_instance.list_automations(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->list_automations: #{e}"
end
```

#### Using the list_automations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationIndexResponse>, Integer, Hash)> list_automations_with_http_info(opts)

```ruby
begin
  # List all automations in a nation
  data, status_code, headers = api_instance.list_automations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->list_automations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_automations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_automations** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: total_enrollments_count, removed_enrollments_count, completed_enrollments_count, converted_enrollments_count, conversions_enabled | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**AutomationIndexResponse**](AutomationIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_automations

> <AutomationShowResponse> show_automations(id, opts)

Show automation with provided ID

Show automation with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: enrollments 
  fields_automations: 'fields_automations_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_automations: 'extra_fields_automations_example' # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: total_enrollments_count, removed_enrollments_count, completed_enrollments_count, converted_enrollments_count, conversions_enabled
}

begin
  # Show automation with provided ID
  result = api_instance.show_automations(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->show_automations: #{e}"
end
```

#### Using the show_automations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationShowResponse>, Integer, Hash)> show_automations_with_http_info(id, opts)

```ruby
begin
  # Show automation with provided ID
  data, status_code, headers = api_instance.show_automations_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->show_automations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: enrollments  | [optional] |
| **fields_automations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_automations** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: total_enrollments_count, removed_enrollments_count, completed_enrollments_count, converted_enrollments_count, conversions_enabled | [optional] |

### Return type

[**AutomationShowResponse**](AutomationShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_automation

> <AutomationShowResponse> update_automation(id, opts)

Update an existing automation

Updates an existing automation

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: enrollments 
  fields_automations: 'fields_automations_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_automations: 'extra_fields_automations_example', # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: total_enrollments_count, removed_enrollments_count, completed_enrollments_count, converted_enrollments_count, conversions_enabled
  automation_update_request: NationbuilderClient::AutomationUpdateRequest.new # AutomationUpdateRequest | 
}

begin
  # Update an existing automation
  result = api_instance.update_automation(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->update_automation: #{e}"
end
```

#### Using the update_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationShowResponse>, Integer, Hash)> update_automation_with_http_info(id, opts)

```ruby
begin
  # Update an existing automation
  data, status_code, headers = api_instance.update_automation_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: enrollments  | [optional] |
| **fields_automations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_automations** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: total_enrollments_count, removed_enrollments_count, completed_enrollments_count, converted_enrollments_count, conversions_enabled | [optional] |
| **automation_update_request** | [**AutomationUpdateRequest**](AutomationUpdateRequest.md) |  | [optional] |

### Return type

[**AutomationShowResponse**](AutomationShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

