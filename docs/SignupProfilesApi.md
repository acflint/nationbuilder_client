# NationbuilderClient::SignupProfilesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_signup_profile**](SignupProfilesApi.md#create_signup_profile) | **POST** /api/v2/signup_profiles | Create a signup profile |
| [**delete_signup_profile**](SignupProfilesApi.md#delete_signup_profile) | **DELETE** /api/v2/signup_profiles/{id} | Delete signup profile with provided ID |
| [**list_signup_profiles**](SignupProfilesApi.md#list_signup_profiles) | **GET** /api/v2/signup_profiles | List all signup profiles in a nation |
| [**show_signup_profile**](SignupProfilesApi.md#show_signup_profile) | **GET** /api/v2/signup_profiles/{id} | Show signup profile with provided ID |
| [**update_signup_profile**](SignupProfilesApi.md#update_signup_profile) | **PATCH** /api/v2/signup_profiles/{id} | Update an existing signup profile |


## create_signup_profile

> <SignupProfileShowResponse> create_signup_profile(opts)

Create a signup profile

Creates a signup profile from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupProfilesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup 
  fields_signup_profiles: 'fields_signup_profiles_example', # String | Comma-delimited list of attributes to only return in the response
  signup_profile_create_request: NationbuilderClient::SignupProfileCreateRequest.new # SignupProfileCreateRequest | 
}

begin
  # Create a signup profile
  result = api_instance.create_signup_profile(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->create_signup_profile: #{e}"
end
```

#### Using the create_signup_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupProfileShowResponse>, Integer, Hash)> create_signup_profile_with_http_info(opts)

```ruby
begin
  # Create a signup profile
  data, status_code, headers = api_instance.create_signup_profile_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupProfileShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->create_signup_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup  | [optional] |
| **fields_signup_profiles** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **signup_profile_create_request** | [**SignupProfileCreateRequest**](SignupProfileCreateRequest.md) |  | [optional] |

### Return type

[**SignupProfileShowResponse**](SignupProfileShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_signup_profile

> <EmptyMetaResponse> delete_signup_profile(id, opts)

Delete signup profile with provided ID

Delete signup_profile with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupProfilesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup 
  fields_signup_profiles: 'fields_signup_profiles_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete signup profile with provided ID
  result = api_instance.delete_signup_profile(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->delete_signup_profile: #{e}"
end
```

#### Using the delete_signup_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_signup_profile_with_http_info(id, opts)

```ruby
begin
  # Delete signup profile with provided ID
  data, status_code, headers = api_instance.delete_signup_profile_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->delete_signup_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup  | [optional] |
| **fields_signup_profiles** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_signup_profiles

> <SignupProfileIndexResponse> list_signup_profiles(opts)

List all signup profiles in a nation

Lists all signup profiles

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupProfilesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup 
  fields_signup_profiles: 'fields_signup_profiles_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all signup profiles in a nation
  result = api_instance.list_signup_profiles(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->list_signup_profiles: #{e}"
end
```

#### Using the list_signup_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupProfileIndexResponse>, Integer, Hash)> list_signup_profiles_with_http_info(opts)

```ruby
begin
  # List all signup profiles in a nation
  data, status_code, headers = api_instance.list_signup_profiles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupProfileIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->list_signup_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup  | [optional] |
| **fields_signup_profiles** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SignupProfileIndexResponse**](SignupProfileIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_signup_profile

> <SignupProfileShowResponse> show_signup_profile(id, opts)

Show signup profile with provided ID

Show signup profile with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupProfilesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup 
  fields_signup_profiles: 'fields_signup_profiles_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show signup profile with provided ID
  result = api_instance.show_signup_profile(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->show_signup_profile: #{e}"
end
```

#### Using the show_signup_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupProfileShowResponse>, Integer, Hash)> show_signup_profile_with_http_info(id, opts)

```ruby
begin
  # Show signup profile with provided ID
  data, status_code, headers = api_instance.show_signup_profile_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupProfileShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->show_signup_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup  | [optional] |
| **fields_signup_profiles** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**SignupProfileShowResponse**](SignupProfileShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_signup_profile

> <SignupProfileShowResponse> update_signup_profile(id, opts)

Update an existing signup profile

Updates an existing signup profile

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupProfilesApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup 
  fields_signup_profiles: 'fields_signup_profiles_example', # String | Comma-delimited list of attributes to only return in the response
  signup_profile_update_request: NationbuilderClient::SignupProfileUpdateRequest.new # SignupProfileUpdateRequest | 
}

begin
  # Update an existing signup profile
  result = api_instance.update_signup_profile(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->update_signup_profile: #{e}"
end
```

#### Using the update_signup_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupProfileShowResponse>, Integer, Hash)> update_signup_profile_with_http_info(id, opts)

```ruby
begin
  # Update an existing signup profile
  data, status_code, headers = api_instance.update_signup_profile_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupProfileShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupProfilesApi->update_signup_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup  | [optional] |
| **fields_signup_profiles** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **signup_profile_update_request** | [**SignupProfileUpdateRequest**](SignupProfileUpdateRequest.md) |  | [optional] |

### Return type

[**SignupProfileShowResponse**](SignupProfileShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

