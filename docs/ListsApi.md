# NationbuilderClient::ListsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_signups**](ListsApi.md#add_signups) | **PATCH** /api/v2/lists/{id}/add_signups | Add signups |
| [**create_list**](ListsApi.md#create_list) | **POST** /api/v2/lists | Create a list |
| [**delete_list**](ListsApi.md#delete_list) | **DELETE** /api/v2/lists/{id} | Delete list with provided ID |
| [**list_lists**](ListsApi.md#list_lists) | **GET** /api/v2/lists | List all lists in a nation |
| [**list_signup_listings**](ListsApi.md#list_signup_listings) | **GET** /api/v2/lists/{id}/signups | List all signups on the list for provided ID |
| [**remove_signups**](ListsApi.md#remove_signups) | **PATCH** /api/v2/lists/{id}/remove_signups | Remove signups |
| [**show_list**](ListsApi.md#show_list) | **GET** /api/v2/lists/{id} | Show list with provided ID |
| [**tag_signups**](ListsApi.md#tag_signups) | **PATCH** /api/v2/lists/{id}/tag | Add a tag to signups |
| [**untag_signups**](ListsApi.md#untag_signups) | **PATCH** /api/v2/lists/{id}/untag | Remove a tag from signups |
| [**update_list**](ListsApi.md#update_list) | **PATCH** /api/v2/lists/{id} | Update an existing list |


## add_signups

> <AddSignups202Response> add_signups(id, add_signups_request)

Add signups

Add Signup IDs to list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload. 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | id
add_signups_request = NationbuilderClient::AddSignupsRequest.new # AddSignupsRequest | 

begin
  # Add signups
  result = api_instance.add_signups(id, add_signups_request)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->add_signups: #{e}"
end
```

#### Using the add_signups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddSignups202Response>, Integer, Hash)> add_signups_with_http_info(id, add_signups_request)

```ruby
begin
  # Add signups
  data, status_code, headers = api_instance.add_signups_with_http_info(id, add_signups_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddSignups202Response>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->add_signups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **add_signups_request** | [**AddSignupsRequest**](AddSignupsRequest.md) |  |  |

### Return type

[**AddSignups202Response**](AddSignups202Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_list

> <ListShowResponse> create_list(opts)

Create a list

Creates a list from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent 
  fields_lists: 'fields_lists_example', # String | Comma-delimited list of attributes to only return in the response
  list_create_request: NationbuilderClient::ListCreateRequest.new # ListCreateRequest | 
}

begin
  # Create a list
  result = api_instance.create_list(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->create_list: #{e}"
end
```

#### Using the create_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListShowResponse>, Integer, Hash)> create_list_with_http_info(opts)

```ruby
begin
  # Create a list
  data, status_code, headers = api_instance.create_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->create_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent  | [optional] |
| **fields_lists** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **list_create_request** | [**ListCreateRequest**](ListCreateRequest.md) |  | [optional] |

### Return type

[**ListShowResponse**](ListShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_list

> <EmptyMetaResponse> delete_list(id, opts)

Delete list with provided ID

Delete list with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists 
  fields_lists: 'fields_lists_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete list with provided ID
  result = api_instance.delete_list(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->delete_list: #{e}"
end
```

#### Using the delete_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_list_with_http_info(id, opts)

```ruby
begin
  # Delete list with provided ID
  data, status_code, headers = api_instance.delete_list_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->delete_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists  | [optional] |
| **fields_lists** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lists

> <ListIndexResponse> list_lists(opts)

List all lists in a nation

Lists all lists

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent 
  fields_lists: 'fields_lists_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all lists in a nation
  result = api_instance.list_lists(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->list_lists: #{e}"
end
```

#### Using the list_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIndexResponse>, Integer, Hash)> list_lists_with_http_info(opts)

```ruby
begin
  # List all lists in a nation
  data, status_code, headers = api_instance.list_lists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->list_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent  | [optional] |
| **fields_lists** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**ListIndexResponse**](ListIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_signup_listings

> <SignupIndexResponse> list_signup_listings(id, opts)

List all signups on the list for provided ID

Lists all signups for a given list

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | List id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all signups on the list for provided ID
  result = api_instance.list_signup_listings(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->list_signup_listings: #{e}"
end
```

#### Using the list_signup_listings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupIndexResponse>, Integer, Hash)> list_signup_listings_with_http_info(id, opts)

```ruby
begin
  # List all signups on the list for provided ID
  data, status_code, headers = api_instance.list_signup_listings_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->list_signup_listings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | List id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SignupIndexResponse**](SignupIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_signups

> <AddSignups202Response> remove_signups(id, remove_signups_request)

Remove signups

Remove Signup IDs from a list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload. 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | id
remove_signups_request = NationbuilderClient::RemoveSignupsRequest.new # RemoveSignupsRequest | 

begin
  # Remove signups
  result = api_instance.remove_signups(id, remove_signups_request)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->remove_signups: #{e}"
end
```

#### Using the remove_signups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddSignups202Response>, Integer, Hash)> remove_signups_with_http_info(id, remove_signups_request)

```ruby
begin
  # Remove signups
  data, status_code, headers = api_instance.remove_signups_with_http_info(id, remove_signups_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddSignups202Response>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->remove_signups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **remove_signups_request** | [**RemoveSignupsRequest**](RemoveSignupsRequest.md) |  |  |

### Return type

[**AddSignups202Response**](AddSignups202Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_list

> <ListShowResponse> show_list(id, opts)

Show list with provided ID

Show list with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists 
  fields_lists: 'fields_lists_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show list with provided ID
  result = api_instance.show_list(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->show_list: #{e}"
end
```

#### Using the show_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListShowResponse>, Integer, Hash)> show_list_with_http_info(id, opts)

```ruby
begin
  # Show list with provided ID
  data, status_code, headers = api_instance.show_list_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->show_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists  | [optional] |
| **fields_lists** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**ListShowResponse**](ListShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tag_signups

> <AddSignups202Response> tag_signups(id, tag_signups_request)

Add a tag to signups

Tag signups in list via an asynchronous process. If the tag does not exist it is created. Returns the token of an asyncrhronously process that can be queried using another endpoint. 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | id
tag_signups_request = NationbuilderClient::TagSignupsRequest.new # TagSignupsRequest | 

begin
  # Add a tag to signups
  result = api_instance.tag_signups(id, tag_signups_request)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->tag_signups: #{e}"
end
```

#### Using the tag_signups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddSignups202Response>, Integer, Hash)> tag_signups_with_http_info(id, tag_signups_request)

```ruby
begin
  # Add a tag to signups
  data, status_code, headers = api_instance.tag_signups_with_http_info(id, tag_signups_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddSignups202Response>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->tag_signups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **tag_signups_request** | [**TagSignupsRequest**](TagSignupsRequest.md) |  |  |

### Return type

[**AddSignups202Response**](AddSignups202Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## untag_signups

> <AddSignups202Response> untag_signups(id, untag_signups_request)

Remove a tag from signups

Remove tag from signups in list via an asynchronous process. Returns the token of an asyncrhronously process that can be queried using another endpoint. 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | id
untag_signups_request = NationbuilderClient::UntagSignupsRequest.new # UntagSignupsRequest | 

begin
  # Remove a tag from signups
  result = api_instance.untag_signups(id, untag_signups_request)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->untag_signups: #{e}"
end
```

#### Using the untag_signups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddSignups202Response>, Integer, Hash)> untag_signups_with_http_info(id, untag_signups_request)

```ruby
begin
  # Remove a tag from signups
  data, status_code, headers = api_instance.untag_signups_with_http_info(id, untag_signups_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddSignups202Response>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->untag_signups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **untag_signups_request** | [**UntagSignupsRequest**](UntagSignupsRequest.md) |  |  |

### Return type

[**AddSignups202Response**](AddSignups202Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_list

> <ListShowResponse> update_list(id, opts)

Update an existing list

Updates an existing list

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::ListsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists 
  fields_lists: 'fields_lists_example', # String | Comma-delimited list of attributes to only return in the response
  list_update_request: NationbuilderClient::ListUpdateRequest.new # ListUpdateRequest | 
}

begin
  # Update an existing list
  result = api_instance.update_list(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->update_list: #{e}"
end
```

#### Using the update_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListShowResponse>, Integer, Hash)> update_list_with_http_info(id, opts)

```ruby
begin
  # Update an existing list
  data, status_code, headers = api_instance.update_list_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling ListsApi->update_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists  | [optional] |
| **fields_lists** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **list_update_request** | [**ListUpdateRequest**](ListUpdateRequest.md) |  | [optional] |

### Return type

[**ListShowResponse**](ListShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

