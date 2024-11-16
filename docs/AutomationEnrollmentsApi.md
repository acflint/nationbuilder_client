# NationbuilderClient::AutomationEnrollmentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_automation_enrollments**](AutomationEnrollmentsApi.md#create_automation_enrollments) | **POST** /api/v2/automation_enrollments | Create an automation enrollment |
| [**delete_automation_enrollments**](AutomationEnrollmentsApi.md#delete_automation_enrollments) | **DELETE** /api/v2/automation_enrollments/{id} | Delete automation enrollments with provided ID |
| [**list_automation_enrollments**](AutomationEnrollmentsApi.md#list_automation_enrollments) | **GET** /api/v2/automation_enrollments | List all automation enrollments in a nation |
| [**show_automation_enrollments**](AutomationEnrollmentsApi.md#show_automation_enrollments) | **GET** /api/v2/automation_enrollments/{id} | Show automation enrollments with provided ID |


## create_automation_enrollments

> <AutomationEnrollmentShowResponse> create_automation_enrollments(opts)

Create an automation enrollment

Creates an automation enrollment from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationEnrollmentsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup 
  fields_automation_enrollments: 'fields_automation_enrollments_example', # String | Comma-delimited list of attributes to only return in the response
  automation_enrollment_create_request: NationbuilderClient::AutomationEnrollmentCreateRequest.new # AutomationEnrollmentCreateRequest | 
}

begin
  # Create an automation enrollment
  result = api_instance.create_automation_enrollments(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->create_automation_enrollments: #{e}"
end
```

#### Using the create_automation_enrollments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationEnrollmentShowResponse>, Integer, Hash)> create_automation_enrollments_with_http_info(opts)

```ruby
begin
  # Create an automation enrollment
  data, status_code, headers = api_instance.create_automation_enrollments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationEnrollmentShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->create_automation_enrollments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup  | [optional] |
| **fields_automation_enrollments** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **automation_enrollment_create_request** | [**AutomationEnrollmentCreateRequest**](AutomationEnrollmentCreateRequest.md) |  | [optional] |

### Return type

[**AutomationEnrollmentShowResponse**](AutomationEnrollmentShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_automation_enrollments

> <EmptyMetaResponse> delete_automation_enrollments(id)

Delete automation enrollments with provided ID

Delete automation enrollments with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationEnrollmentsApi.new
id = 'id_example' # String | 

begin
  # Delete automation enrollments with provided ID
  result = api_instance.delete_automation_enrollments(id)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->delete_automation_enrollments: #{e}"
end
```

#### Using the delete_automation_enrollments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_automation_enrollments_with_http_info(id)

```ruby
begin
  # Delete automation enrollments with provided ID
  data, status_code, headers = api_instance.delete_automation_enrollments_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->delete_automation_enrollments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automation_enrollments

> <AutomationEnrollmentIndexResponse> list_automation_enrollments(opts)

List all automation enrollments in a nation

Lists all automation enrollments

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationEnrollmentsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup 
  fields_automation_enrollments: 'fields_automation_enrollments_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all automation enrollments in a nation
  result = api_instance.list_automation_enrollments(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->list_automation_enrollments: #{e}"
end
```

#### Using the list_automation_enrollments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationEnrollmentIndexResponse>, Integer, Hash)> list_automation_enrollments_with_http_info(opts)

```ruby
begin
  # List all automation enrollments in a nation
  data, status_code, headers = api_instance.list_automation_enrollments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationEnrollmentIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->list_automation_enrollments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup  | [optional] |
| **fields_automation_enrollments** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**AutomationEnrollmentIndexResponse**](AutomationEnrollmentIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_automation_enrollments

> <AutomationEnrollmentShowResponse> show_automation_enrollments(id, opts)

Show automation enrollments with provided ID

Show automation enrollments with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::AutomationEnrollmentsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup 
  fields_automation_enrollments: 'fields_automation_enrollments_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show automation enrollments with provided ID
  result = api_instance.show_automation_enrollments(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->show_automation_enrollments: #{e}"
end
```

#### Using the show_automation_enrollments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationEnrollmentShowResponse>, Integer, Hash)> show_automation_enrollments_with_http_info(id, opts)

```ruby
begin
  # Show automation enrollments with provided ID
  data, status_code, headers = api_instance.show_automation_enrollments_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationEnrollmentShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling AutomationEnrollmentsApi->show_automation_enrollments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup  | [optional] |
| **fields_automation_enrollments** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**AutomationEnrollmentShowResponse**](AutomationEnrollmentShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

