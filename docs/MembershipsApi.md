# NationbuilderClient::MembershipsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_membership**](MembershipsApi.md#create_membership) | **POST** /api/v2/memberships | Create a membership |
| [**delete_membership**](MembershipsApi.md#delete_membership) | **DELETE** /api/v2/memberships/{id} | Delete membership with provided ID |
| [**list_memberships**](MembershipsApi.md#list_memberships) | **GET** /api/v2/memberships | List all memberships in a nation |
| [**show_membership**](MembershipsApi.md#show_membership) | **GET** /api/v2/memberships/{id} | Show membership with provided ID |
| [**update_membership**](MembershipsApi.md#update_membership) | **PATCH** /api/v2/memberships/{id} | Update an existing membership |


## create_membership

> <MembershipShowResponse> create_membership(opts)

Create a membership

Creates a membership from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: membership_type, signup 
  fields_memberships: 'fields_memberships_example', # String | Comma-delimited list of attributes to only return in the response
  membership_create_request: NationbuilderClient::MembershipCreateRequest.new # MembershipCreateRequest | 
}

begin
  # Create a membership
  result = api_instance.create_membership(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->create_membership: #{e}"
end
```

#### Using the create_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipShowResponse>, Integer, Hash)> create_membership_with_http_info(opts)

```ruby
begin
  # Create a membership
  data, status_code, headers = api_instance.create_membership_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->create_membership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: membership_type, signup  | [optional] |
| **fields_memberships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **membership_create_request** | [**MembershipCreateRequest**](MembershipCreateRequest.md) |  | [optional] |

### Return type

[**MembershipShowResponse**](MembershipShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_membership

> <EmptyMetaResponse> delete_membership(id, opts)

Delete membership with provided ID

Delete membership with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup 
  fields_memberships: 'fields_memberships_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete membership with provided ID
  result = api_instance.delete_membership(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->delete_membership: #{e}"
end
```

#### Using the delete_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_membership_with_http_info(id, opts)

```ruby
begin
  # Delete membership with provided ID
  data, status_code, headers = api_instance.delete_membership_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->delete_membership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup  | [optional] |
| **fields_memberships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_memberships

> <MembershipIndexResponse> list_memberships(opts)

List all memberships in a nation

Lists all memberships

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: membership_type, signup 
  fields_memberships: 'fields_memberships_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all memberships in a nation
  result = api_instance.list_memberships(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->list_memberships: #{e}"
end
```

#### Using the list_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipIndexResponse>, Integer, Hash)> list_memberships_with_http_info(opts)

```ruby
begin
  # List all memberships in a nation
  data, status_code, headers = api_instance.list_memberships_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->list_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: membership_type, signup  | [optional] |
| **fields_memberships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**MembershipIndexResponse**](MembershipIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_membership

> <MembershipShowResponse> show_membership(id, opts)

Show membership with provided ID

Show membership with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup 
  fields_memberships: 'fields_memberships_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show membership with provided ID
  result = api_instance.show_membership(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->show_membership: #{e}"
end
```

#### Using the show_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipShowResponse>, Integer, Hash)> show_membership_with_http_info(id, opts)

```ruby
begin
  # Show membership with provided ID
  data, status_code, headers = api_instance.show_membership_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->show_membership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup  | [optional] |
| **fields_memberships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**MembershipShowResponse**](MembershipShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_membership

> <MembershipShowResponse> update_membership(id, opts)

Update an existing membership

Updates an existing membership

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MembershipsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup 
  fields_memberships: 'fields_memberships_example', # String | Comma-delimited list of attributes to only return in the response
  membership_update_request: NationbuilderClient::MembershipUpdateRequest.new # MembershipUpdateRequest | 
}

begin
  # Update an existing membership
  result = api_instance.update_membership(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->update_membership: #{e}"
end
```

#### Using the update_membership_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembershipShowResponse>, Integer, Hash)> update_membership_with_http_info(id, opts)

```ruby
begin
  # Update an existing membership
  data, status_code, headers = api_instance.update_membership_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembershipShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MembershipsApi->update_membership_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup  | [optional] |
| **fields_memberships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **membership_update_request** | [**MembershipUpdateRequest**](MembershipUpdateRequest.md) |  | [optional] |

### Return type

[**MembershipShowResponse**](MembershipShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

