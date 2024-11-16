# NationbuilderClient::DonationTrackingCodesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_donation_tracking_code**](DonationTrackingCodesApi.md#create_donation_tracking_code) | **POST** /api/v2/donation_tracking_codes | Create a donation tracking code |
| [**delete_donation_tracking_code**](DonationTrackingCodesApi.md#delete_donation_tracking_code) | **DELETE** /api/v2/donation_tracking_codes/{id} | Delete donation tracking code with provided ID |
| [**list_donation_tracking_codes**](DonationTrackingCodesApi.md#list_donation_tracking_codes) | **GET** /api/v2/donation_tracking_codes | List all donation tracking codes in a nation |
| [**show_donation_tracking_code**](DonationTrackingCodesApi.md#show_donation_tracking_code) | **GET** /api/v2/donation_tracking_codes/{id} | Show donation tracking code with provided ID |
| [**update_donation_tracking_code**](DonationTrackingCodesApi.md#update_donation_tracking_code) | **PATCH** /api/v2/donation_tracking_codes/{id} | Update an existing donation tracking code |


## create_donation_tracking_code

> <DonationTrackingCodeShowResponse> create_donation_tracking_code(opts)

Create a donation tracking code

Creates a donation tracking code from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationTrackingCodesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_donation_tracking_codes: 'fields_donation_tracking_codes_example', # String | Comma-delimited list of attributes to only return in the response
  donation_tracking_code_create_request: NationbuilderClient::DonationTrackingCodeCreateRequest.new # DonationTrackingCodeCreateRequest | 
}

begin
  # Create a donation tracking code
  result = api_instance.create_donation_tracking_code(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->create_donation_tracking_code: #{e}"
end
```

#### Using the create_donation_tracking_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationTrackingCodeShowResponse>, Integer, Hash)> create_donation_tracking_code_with_http_info(opts)

```ruby
begin
  # Create a donation tracking code
  data, status_code, headers = api_instance.create_donation_tracking_code_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationTrackingCodeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->create_donation_tracking_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_donation_tracking_codes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **donation_tracking_code_create_request** | [**DonationTrackingCodeCreateRequest**](DonationTrackingCodeCreateRequest.md) |  | [optional] |

### Return type

[**DonationTrackingCodeShowResponse**](DonationTrackingCodeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_donation_tracking_code

> <EmptyMetaResponse> delete_donation_tracking_code(id, opts)

Delete donation tracking code with provided ID

Delete donation tracking code with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationTrackingCodesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations 
  fields_donation_tracking_codes: 'fields_donation_tracking_codes_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete donation tracking code with provided ID
  result = api_instance.delete_donation_tracking_code(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->delete_donation_tracking_code: #{e}"
end
```

#### Using the delete_donation_tracking_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_donation_tracking_code_with_http_info(id, opts)

```ruby
begin
  # Delete donation tracking code with provided ID
  data, status_code, headers = api_instance.delete_donation_tracking_code_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->delete_donation_tracking_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations  | [optional] |
| **fields_donation_tracking_codes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_donation_tracking_codes

> <DonationTrackingCodeIndexResponse> list_donation_tracking_codes(opts)

List all donation tracking codes in a nation

Lists all donation tracking codes

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationTrackingCodesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_donation_tracking_codes: 'fields_donation_tracking_codes_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all donation tracking codes in a nation
  result = api_instance.list_donation_tracking_codes(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->list_donation_tracking_codes: #{e}"
end
```

#### Using the list_donation_tracking_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationTrackingCodeIndexResponse>, Integer, Hash)> list_donation_tracking_codes_with_http_info(opts)

```ruby
begin
  # List all donation tracking codes in a nation
  data, status_code, headers = api_instance.list_donation_tracking_codes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationTrackingCodeIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->list_donation_tracking_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_donation_tracking_codes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**DonationTrackingCodeIndexResponse**](DonationTrackingCodeIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_donation_tracking_code

> <DonationTrackingCodeShowResponse> show_donation_tracking_code(id, opts)

Show donation tracking code with provided ID

Show donation tracking code with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationTrackingCodesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations 
  fields_donation_tracking_codes: 'fields_donation_tracking_codes_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show donation tracking code with provided ID
  result = api_instance.show_donation_tracking_code(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->show_donation_tracking_code: #{e}"
end
```

#### Using the show_donation_tracking_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationTrackingCodeShowResponse>, Integer, Hash)> show_donation_tracking_code_with_http_info(id, opts)

```ruby
begin
  # Show donation tracking code with provided ID
  data, status_code, headers = api_instance.show_donation_tracking_code_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationTrackingCodeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->show_donation_tracking_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations  | [optional] |
| **fields_donation_tracking_codes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**DonationTrackingCodeShowResponse**](DonationTrackingCodeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_donation_tracking_code

> <DonationTrackingCodeShowResponse> update_donation_tracking_code(id, opts)

Update an existing donation tracking code

Updates an existing donation tracking code

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationTrackingCodesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations 
  fields_donation_tracking_codes: 'fields_donation_tracking_codes_example', # String | Comma-delimited list of attributes to only return in the response
  donation_tracking_code_update_request: NationbuilderClient::DonationTrackingCodeUpdateRequest.new # DonationTrackingCodeUpdateRequest | 
}

begin
  # Update an existing donation tracking code
  result = api_instance.update_donation_tracking_code(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->update_donation_tracking_code: #{e}"
end
```

#### Using the update_donation_tracking_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationTrackingCodeShowResponse>, Integer, Hash)> update_donation_tracking_code_with_http_info(id, opts)

```ruby
begin
  # Update an existing donation tracking code
  data, status_code, headers = api_instance.update_donation_tracking_code_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationTrackingCodeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationTrackingCodesApi->update_donation_tracking_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations  | [optional] |
| **fields_donation_tracking_codes** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **donation_tracking_code_update_request** | [**DonationTrackingCodeUpdateRequest**](DonationTrackingCodeUpdateRequest.md) |  | [optional] |

### Return type

[**DonationTrackingCodeShowResponse**](DonationTrackingCodeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

