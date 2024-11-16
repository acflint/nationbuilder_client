# NationbuilderClient::SignupsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_signup**](SignupsApi.md#create_signup) | **POST** /api/v2/signups | Create a signup |
| [**delete_signup**](SignupsApi.md#delete_signup) | **DELETE** /api/v2/signups/{id} | Delete signup with provided ID |
| [**list_signups**](SignupsApi.md#list_signups) | **GET** /api/v2/signups | List all signups in a nation |
| [**me_signup**](SignupsApi.md#me_signup) | **GET** /api/v2/signups/me | Show signup assigned to auth token |
| [**push_signup**](SignupsApi.md#push_signup) | **PATCH** /api/v2/signups/push | Push signup data into nation |
| [**show_signup**](SignupsApi.md#show_signup) | **GET** /api/v2/signups/{id} | Show signup with provided ID |
| [**update_signup**](SignupsApi.md#update_signup) | **PATCH** /api/v2/signups/{id} | Update an existing signup |


## create_signup

> <SignupShowResponse> create_signup(opts)

Create a signup

Creates a signup from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_signups: 'extra_fields_signups_example', # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url
  signup_create_request: NationbuilderClient::SignupCreateRequest.new # SignupCreateRequest | 
}

begin
  # Create a signup
  result = api_instance.create_signup(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->create_signup: #{e}"
end
```

#### Using the create_signup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupShowResponse>, Integer, Hash)> create_signup_with_http_info(opts)

```ruby
begin
  # Create a signup
  data, status_code, headers = api_instance.create_signup_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->create_signup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_signups** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url | [optional] |
| **signup_create_request** | [**SignupCreateRequest**](SignupCreateRequest.md) |  | [optional] |

### Return type

[**SignupShowResponse**](SignupShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_signup

> <EmptyMetaResponse> delete_signup(id, opts)

Delete signup with provided ID

Delete signup with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_signups: 'extra_fields_signups_example' # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url
}

begin
  # Delete signup with provided ID
  result = api_instance.delete_signup(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->delete_signup: #{e}"
end
```

#### Using the delete_signup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_signup_with_http_info(id, opts)

```ruby
begin
  # Delete signup with provided ID
  data, status_code, headers = api_instance.delete_signup_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->delete_signup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_signups** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_signups

> <SignupIndexResponse> list_signups(opts)

List all signups in a nation

Lists all signups

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_signups: 'extra_fields_signups_example', # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url
  filter_nearby: 'filter_nearby_example', # String | Filter signups by location (lat, long) and distance from the location in miles. Format for the parameter value is {\"location\": \"90.0,-180.0\", \"distance\": 15}. If a distance is not provided, signups within 1 mile from the location will be returned.
  filter_page_id: 'filter_page_id_example', # String | Filters Signups by page_id, the id of the page they signed up from.
  filter_with_email_address: 'filter_with_email_address_example', # String | Filters signups by their associated email addresses. This filter will accept one of the following as a parameter: [eq, match, not_match, prefix, not_prefix, suffix, not_suffix]. The value is the email address to filter on.
  filter_with_bouncing_email: true, # Boolean | Filter signups with bounced email addresses. When the value is true the filter returns signups that do have an email address marked as bounced. When the value is false the filter returns signups that do not have an email address marked as bounced
  filter_tag_id: 'filter_tag_id_example', # String | 
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all signups in a nation
  result = api_instance.list_signups(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->list_signups: #{e}"
end
```

#### Using the list_signups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupIndexResponse>, Integer, Hash)> list_signups_with_http_info(opts)

```ruby
begin
  # List all signups in a nation
  data, status_code, headers = api_instance.list_signups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->list_signups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_signups** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url | [optional] |
| **filter_nearby** | **String** | Filter signups by location (lat, long) and distance from the location in miles. Format for the parameter value is {\&quot;location\&quot;: \&quot;90.0,-180.0\&quot;, \&quot;distance\&quot;: 15}. If a distance is not provided, signups within 1 mile from the location will be returned. | [optional] |
| **filter_page_id** | **String** | Filters Signups by page_id, the id of the page they signed up from. | [optional] |
| **filter_with_email_address** | **String** | Filters signups by their associated email addresses. This filter will accept one of the following as a parameter: [eq, match, not_match, prefix, not_prefix, suffix, not_suffix]. The value is the email address to filter on. | [optional] |
| **filter_with_bouncing_email** | **Boolean** | Filter signups with bounced email addresses. When the value is true the filter returns signups that do have an email address marked as bounced. When the value is false the filter returns signups that do not have an email address marked as bounced | [optional] |
| **filter_tag_id** | **String** |  | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SignupIndexResponse**](SignupIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## me_signup

> <SignupShowResponse> me_signup(opts)

Show signup assigned to auth token

Show signup assigned to auth token

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_signups: 'extra_fields_signups_example' # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url
}

begin
  # Show signup assigned to auth token
  result = api_instance.me_signup(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->me_signup: #{e}"
end
```

#### Using the me_signup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupShowResponse>, Integer, Hash)> me_signup_with_http_info(opts)

```ruby
begin
  # Show signup assigned to auth token
  data, status_code, headers = api_instance.me_signup_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->me_signup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_signups** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url | [optional] |

### Return type

[**SignupShowResponse**](SignupShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## push_signup

> <SignupShowResponse> push_signup(opts)

Push signup data into nation

This endpoint attempts to match the input person resource to a person already in the nation. If a match is found, the matched person is updated and a 200 status code is returned. If a match is not found, a new person is created and a 201 status code is returned. Matches are found by including one of the following IDs in the request:   - civicrm_id   - county_file_id   - dw_id   - external_id   - email   - facebook_username   - ngp_id   - salesforce_id   - twitter_login   - van_id  The push endpoint also accepts all sideposted data that is allowed on the signup resource's create and update endpoints. Please see the top-level sideposting documentation for more information on sideposting signup relationships. 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_signups: 'extra_fields_signups_example', # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url
  signup_create_request: NationbuilderClient::SignupCreateRequest.new # SignupCreateRequest | 
}

begin
  # Push signup data into nation
  result = api_instance.push_signup(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->push_signup: #{e}"
end
```

#### Using the push_signup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupShowResponse>, Integer, Hash)> push_signup_with_http_info(opts)

```ruby
begin
  # Push signup data into nation
  data, status_code, headers = api_instance.push_signup_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->push_signup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_signups** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url | [optional] |
| **signup_create_request** | [**SignupCreateRequest**](SignupCreateRequest.md) |  | [optional] |

### Return type

[**SignupShowResponse**](SignupShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_signup

> <SignupShowResponse> show_signup(id, opts)

Show signup with provided ID

Show signup with provided ID 

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_signups: 'extra_fields_signups_example' # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url
}

begin
  # Show signup with provided ID
  result = api_instance.show_signup(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->show_signup: #{e}"
end
```

#### Using the show_signup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupShowResponse>, Integer, Hash)> show_signup_with_http_info(id, opts)

```ruby
begin
  # Show signup with provided ID
  data, status_code, headers = api_instance.show_signup_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->show_signup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_signups** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url | [optional] |

### Return type

[**SignupShowResponse**](SignupShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_signup

> <SignupShowResponse> update_signup(id, opts)

Update an existing signup

Updates an existing signup

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SignupsApi.new
id = 'id_example' # String | 
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures 
  fields_signups: 'fields_signups_example', # String | Comma-delimited list of attributes to only return in the response
  extra_fields_signups: 'extra_fields_signups_example', # String | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url
  signup_update_request: NationbuilderClient::SignupUpdateRequest.new # SignupUpdateRequest | 
}

begin
  # Update an existing signup
  result = api_instance.update_signup(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->update_signup: #{e}"
end
```

#### Using the update_signup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignupShowResponse>, Integer, Hash)> update_signup_with_http_info(id, opts)

```ruby
begin
  # Update an existing signup
  data, status_code, headers = api_instance.update_signup_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignupShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SignupsApi->update_signup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures  | [optional] |
| **fields_signups** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **extra_fields_signups** | **String** | Comma-delimited list of extra attributes, which are only returned in the response if requested. Extract attributes for this resource: billing_address, mailing_address, home_address, primary_address, registered_address, user_submitted_address, work_address, profile_image_url | [optional] |
| **signup_update_request** | [**SignupUpdateRequest**](SignupUpdateRequest.md) |  | [optional] |

### Return type

[**SignupShowResponse**](SignupShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

