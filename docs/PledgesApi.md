# NationbuilderClient::PledgesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_pledge**](PledgesApi.md#create_pledge) | **POST** /api/v2/pledges | Create a pledge |
| [**delete_pledge**](PledgesApi.md#delete_pledge) | **DELETE** /api/v2/pledges/{id} | Delete pledge with provided ID |
| [**list_pledges**](PledgesApi.md#list_pledges) | **GET** /api/v2/pledges | List all pledges in a nation |
| [**show_pledge**](PledgesApi.md#show_pledge) | **GET** /api/v2/pledges/{id} | Show pledge with provided ID |
| [**update_pledge**](PledgesApi.md#update_pledge) | **PATCH** /api/v2/pledges/{id} | Update an existing pledge |


## create_pledge

> <PledgeShowResponse> create_pledge(opts)

Create a pledge

Creates a pledge from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PledgesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  fields_pledges: 'fields_pledges_example', # String | Comma-delimited list of attributes to only return in the response
  pledge_create_request: NationbuilderClient::PledgeCreateRequest.new # PledgeCreateRequest | 
}

begin
  # Create a pledge
  result = api_instance.create_pledge(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->create_pledge: #{e}"
end
```

#### Using the create_pledge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PledgeShowResponse>, Integer, Hash)> create_pledge_with_http_info(opts)

```ruby
begin
  # Create a pledge
  data, status_code, headers = api_instance.create_pledge_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PledgeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->create_pledge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup  | [optional] |
| **fields_pledges** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **pledge_create_request** | [**PledgeCreateRequest**](PledgeCreateRequest.md) |  | [optional] |

### Return type

[**PledgeShowResponse**](PledgeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pledge

> <EmptyMetaResponse> delete_pledge(id, opts)

Delete pledge with provided ID

Delete pledge with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PledgesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  fields_pledges: 'fields_pledges_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete pledge with provided ID
  result = api_instance.delete_pledge(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->delete_pledge: #{e}"
end
```

#### Using the delete_pledge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_pledge_with_http_info(id, opts)

```ruby
begin
  # Delete pledge with provided ID
  data, status_code, headers = api_instance.delete_pledge_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->delete_pledge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup  | [optional] |
| **fields_pledges** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pledges

> <PledgeIndexResponse> list_pledges(opts)

List all pledges in a nation

Lists all pledges

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PledgesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  fields_pledges: 'fields_pledges_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all pledges in a nation
  result = api_instance.list_pledges(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->list_pledges: #{e}"
end
```

#### Using the list_pledges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PledgeIndexResponse>, Integer, Hash)> list_pledges_with_http_info(opts)

```ruby
begin
  # List all pledges in a nation
  data, status_code, headers = api_instance.list_pledges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PledgeIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->list_pledges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup  | [optional] |
| **fields_pledges** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**PledgeIndexResponse**](PledgeIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_pledge

> <PledgeShowResponse> show_pledge(id, opts)

Show pledge with provided ID

Show pledge with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PledgesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  fields_pledges: 'fields_pledges_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show pledge with provided ID
  result = api_instance.show_pledge(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->show_pledge: #{e}"
end
```

#### Using the show_pledge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PledgeShowResponse>, Integer, Hash)> show_pledge_with_http_info(id, opts)

```ruby
begin
  # Show pledge with provided ID
  data, status_code, headers = api_instance.show_pledge_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PledgeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->show_pledge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup  | [optional] |
| **fields_pledges** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**PledgeShowResponse**](PledgeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pledge

> <PledgeShowResponse> update_pledge(id, opts)

Update an existing pledge

Updates an existing pledge

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::PledgesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  fields_pledges: 'fields_pledges_example', # String | Comma-delimited list of attributes to only return in the response
  pledge_update_request: NationbuilderClient::PledgeUpdateRequest.new # PledgeUpdateRequest | 
}

begin
  # Update an existing pledge
  result = api_instance.update_pledge(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->update_pledge: #{e}"
end
```

#### Using the update_pledge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PledgeShowResponse>, Integer, Hash)> update_pledge_with_http_info(id, opts)

```ruby
begin
  # Update an existing pledge
  data, status_code, headers = api_instance.update_pledge_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PledgeShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling PledgesApi->update_pledge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup  | [optional] |
| **fields_pledges** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **pledge_update_request** | [**PledgeUpdateRequest**](PledgeUpdateRequest.md) |  | [optional] |

### Return type

[**PledgeShowResponse**](PledgeShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

