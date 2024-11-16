# NationbuilderClient::ContactsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contacts**](ContactsApi.md#create_contacts) | **POST** /api/v2/contacts | Create a contact |
| [**delete_contacts**](ContactsApi.md#delete_contacts) | **DELETE** /api/v2/contacts/{id} | Delete contact with provided ID |
| [**list_contacts**](ContactsApi.md#list_contacts) | **GET** /api/v2/contacts | List all contacts in a nation |
| [**show_contacts**](ContactsApi.md#show_contacts) | **GET** /api/v2/contacts/{id} | Show contact with provided ID |
| [**update_contacts**](ContactsApi.md#update_contacts) | **PATCH** /api/v2/contacts/{id} | Update an existing contact |


## create_contacts

> <ContactShowResponse> create_contacts(opts)

Create a contact

Creates a contact from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ContactsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author 
  fields_contacts: 'fields_contacts_example', # String | Comma-delimited list of attributes to only return in the response
  contact_create_request: NationbuilderClient::ContactCreateRequest.new # ContactCreateRequest | 
}

begin
  # Create a contact
  result = api_instance.create_contacts(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->create_contacts: #{e}"
end
```

#### Using the create_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactShowResponse>, Integer, Hash)> create_contacts_with_http_info(opts)

```ruby
begin
  # Create a contact
  data, status_code, headers = api_instance.create_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->create_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author  | [optional] |
| **fields_contacts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **contact_create_request** | [**ContactCreateRequest**](ContactCreateRequest.md) |  | [optional] |

### Return type

[**ContactShowResponse**](ContactShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contacts

> <EmptyMetaResponse> delete_contacts(id, opts)

Delete contact with provided ID

Delete contact with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ContactsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author 
  fields_contacts: 'fields_contacts_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete contact with provided ID
  result = api_instance.delete_contacts(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->delete_contacts: #{e}"
end
```

#### Using the delete_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_contacts_with_http_info(id, opts)

```ruby
begin
  # Delete contact with provided ID
  data, status_code, headers = api_instance.delete_contacts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->delete_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author  | [optional] |
| **fields_contacts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_contacts

> <ContactIndexResponse> list_contacts(opts)

List all contacts in a nation

Lists all contacts

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ContactsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author 
  fields_contacts: 'fields_contacts_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all contacts in a nation
  result = api_instance.list_contacts(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->list_contacts: #{e}"
end
```

#### Using the list_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactIndexResponse>, Integer, Hash)> list_contacts_with_http_info(opts)

```ruby
begin
  # List all contacts in a nation
  data, status_code, headers = api_instance.list_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->list_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author  | [optional] |
| **fields_contacts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**ContactIndexResponse**](ContactIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_contacts

> <ContactShowResponse> show_contacts(id, opts)

Show contact with provided ID

Show contact with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ContactsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author 
  fields_contacts: 'fields_contacts_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show contact with provided ID
  result = api_instance.show_contacts(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->show_contacts: #{e}"
end
```

#### Using the show_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactShowResponse>, Integer, Hash)> show_contacts_with_http_info(id, opts)

```ruby
begin
  # Show contact with provided ID
  data, status_code, headers = api_instance.show_contacts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->show_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author  | [optional] |
| **fields_contacts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**ContactShowResponse**](ContactShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contacts

> <ContactShowResponse> update_contacts(id, opts)

Update an existing contact

Updates an existing contact

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ContactsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author 
  fields_contacts: 'fields_contacts_example', # String | Comma-delimited list of attributes to only return in the response
  contact_update_request: NationbuilderClient::ContactUpdateRequest.new # ContactUpdateRequest | 
}

begin
  # Update an existing contact
  result = api_instance.update_contacts(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->update_contacts: #{e}"
end
```

#### Using the update_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactShowResponse>, Integer, Hash)> update_contacts_with_http_info(id, opts)

```ruby
begin
  # Update an existing contact
  data, status_code, headers = api_instance.update_contacts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ContactsApi->update_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, author  | [optional] |
| **fields_contacts** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **contact_update_request** | [**ContactUpdateRequest**](ContactUpdateRequest.md) |  | [optional] |

### Return type

[**ContactShowResponse**](ContactShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

