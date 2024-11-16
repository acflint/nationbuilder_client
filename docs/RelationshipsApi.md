# NationbuilderClient::RelationshipsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_relationship**](RelationshipsApi.md#create_relationship) | **POST** /api/v2/relationships | Create a relationship |
| [**delete_relationship**](RelationshipsApi.md#delete_relationship) | **DELETE** /api/v2/relationships/{id} | Delete relationship with provided ID |
| [**list_relationships**](RelationshipsApi.md#list_relationships) | **GET** /api/v2/relationships | List all relationships in a nation |
| [**show_relationship**](RelationshipsApi.md#show_relationship) | **GET** /api/v2/relationships/{id} | Show relationship with provided ID |
| [**update_relationship**](RelationshipsApi.md#update_relationship) | **PATCH** /api/v2/relationships/{id} | Update an existing relationship |


## create_relationship

> <RelationshipShowResponse> create_relationship(opts)

Create a relationship

Creates a relationship from given data. Valid relationship types are affiliate-affiliate, alum-school, assistant-assisted, board_member-organization, candidate-committee, chapter-parent, child-parent, consultant-organization, employee-employer, family_partner-family_partner, friend-friend, member-organization, mentee-mentor, partner-partner, primary_contact-organization, relative-relative, representative-constituent, resident-organization, sibling-sibling, spouse-spouse, student-school, student-teacher, subordinate-manager, subsidiary-parent, treasurer-committee. first_signup_id       corresponds with the ID of the signup on the first role listed, and second_signup_id corresponds       with the ID of the signup on the second role listed in the relationship type.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::RelationshipsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  fields_relationships: 'fields_relationships_example', # String | Comma-delimited list of attributes to only return in the response
  relationship_create_request: NationbuilderClient::RelationshipCreateRequest.new # RelationshipCreateRequest | 
}

begin
  # Create a relationship
  result = api_instance.create_relationship(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->create_relationship: #{e}"
end
```

#### Using the create_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipShowResponse>, Integer, Hash)> create_relationship_with_http_info(opts)

```ruby
begin
  # Create a relationship
  data, status_code, headers = api_instance.create_relationship_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->create_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup  | [optional] |
| **fields_relationships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **relationship_create_request** | [**RelationshipCreateRequest**](RelationshipCreateRequest.md) |  | [optional] |

### Return type

[**RelationshipShowResponse**](RelationshipShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_relationship

> <EmptyMetaResponse> delete_relationship(id, opts)

Delete relationship with provided ID

Delete relationship with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::RelationshipsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  fields_relationships: 'fields_relationships_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete relationship with provided ID
  result = api_instance.delete_relationship(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->delete_relationship: #{e}"
end
```

#### Using the delete_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_relationship_with_http_info(id, opts)

```ruby
begin
  # Delete relationship with provided ID
  data, status_code, headers = api_instance.delete_relationship_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->delete_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup  | [optional] |
| **fields_relationships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_relationships

> <RelationshipIndexResponse> list_relationships(opts)

List all relationships in a nation

Lists all relationships

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::RelationshipsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  fields_relationships: 'fields_relationships_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # List all relationships in a nation
  result = api_instance.list_relationships(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->list_relationships: #{e}"
end
```

#### Using the list_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipIndexResponse>, Integer, Hash)> list_relationships_with_http_info(opts)

```ruby
begin
  # List all relationships in a nation
  data, status_code, headers = api_instance.list_relationships_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->list_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup  | [optional] |
| **fields_relationships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**RelationshipIndexResponse**](RelationshipIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_relationship

> <RelationshipShowResponse> show_relationship(id, opts)

Show relationship with provided ID

Show relationship with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::RelationshipsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  fields_relationships: 'fields_relationships_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show relationship with provided ID
  result = api_instance.show_relationship(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->show_relationship: #{e}"
end
```

#### Using the show_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipShowResponse>, Integer, Hash)> show_relationship_with_http_info(id, opts)

```ruby
begin
  # Show relationship with provided ID
  data, status_code, headers = api_instance.show_relationship_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->show_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup  | [optional] |
| **fields_relationships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**RelationshipShowResponse**](RelationshipShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_relationship

> <RelationshipShowResponse> update_relationship(id, opts)

Update an existing relationship

Updates an existing relationship. Valid relationship types are affiliate-affiliate, alum-school, assistant-assisted, board_member-organization, candidate-committee, chapter-parent, child-parent, consultant-organization, employee-employer, family_partner-family_partner, friend-friend, member-organization, mentee-mentor, partner-partner, primary_contact-organization, relative-relative, representative-constituent, resident-organization, sibling-sibling, spouse-spouse, student-school, student-teacher, subordinate-manager, subsidiary-parent, treasurer-committee. first_signup_id       corresponds with the ID of the signup on the first role listed, and second_signup_id corresponds       with the ID of the signup on the second role listed in the relationship type.

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::RelationshipsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  fields_relationships: 'fields_relationships_example', # String | Comma-delimited list of attributes to only return in the response
  relationship_update_request: NationbuilderClient::RelationshipUpdateRequest.new # RelationshipUpdateRequest | 
}

begin
  # Update an existing relationship
  result = api_instance.update_relationship(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->update_relationship: #{e}"
end
```

#### Using the update_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipShowResponse>, Integer, Hash)> update_relationship_with_http_info(id, opts)

```ruby
begin
  # Update an existing relationship
  data, status_code, headers = api_instance.update_relationship_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling RelationshipsApi->update_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup  | [optional] |
| **fields_relationships** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **relationship_update_request** | [**RelationshipUpdateRequest**](RelationshipUpdateRequest.md) |  | [optional] |

### Return type

[**RelationshipShowResponse**](RelationshipShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

