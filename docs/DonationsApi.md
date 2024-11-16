# NationbuilderClient::DonationsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_donation**](DonationsApi.md#create_donation) | **POST** /api/v2/donations | Create a donation |
| [**delete_donation**](DonationsApi.md#delete_donation) | **DELETE** /api/v2/donations/{id} | Delete donation with provided ID |
| [**list_donations**](DonationsApi.md#list_donations) | **GET** /api/v2/donations | List all donations in a nation |
| [**show_donation**](DonationsApi.md#show_donation) | **GET** /api/v2/donations/{id} | Show donation with provided ID |
| [**update_donation**](DonationsApi.md#update_donation) | **PATCH** /api/v2/donations/{id} | Update an existing donation |


## create_donation

> <DonationShowResponse> create_donation(opts)

Create a donation

Creates a donation from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  fields_donations: 'fields_donations_example', # String | Comma-delimited list of attributes to only return in the response
  donation_create_request: NationbuilderClient::DonationCreateRequest.new # DonationCreateRequest | 
}

begin
  # Create a donation
  result = api_instance.create_donation(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->create_donation: #{e}"
end
```

#### Using the create_donation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationShowResponse>, Integer, Hash)> create_donation_with_http_info(opts)

```ruby
begin
  # Create a donation
  data, status_code, headers = api_instance.create_donation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->create_donation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup  | [optional] |
| **fields_donations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **donation_create_request** | [**DonationCreateRequest**](DonationCreateRequest.md) |  | [optional] |

### Return type

[**DonationShowResponse**](DonationShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_donation

> <EmptyMetaResponse> delete_donation(id, opts)

Delete donation with provided ID

Delete donation with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  fields_donations: 'fields_donations_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete donation with provided ID
  result = api_instance.delete_donation(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->delete_donation: #{e}"
end
```

#### Using the delete_donation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_donation_with_http_info(id, opts)

```ruby
begin
  # Delete donation with provided ID
  data, status_code, headers = api_instance.delete_donation_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->delete_donation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup  | [optional] |
| **fields_donations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_donations

> <DonationIndexResponse> list_donations(opts)

List all donations in a nation

Lists all donations

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  fields_donations: 'fields_donations_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all donations in a nation
  result = api_instance.list_donations(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->list_donations: #{e}"
end
```

#### Using the list_donations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationIndexResponse>, Integer, Hash)> list_donations_with_http_info(opts)

```ruby
begin
  # List all donations in a nation
  data, status_code, headers = api_instance.list_donations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->list_donations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup  | [optional] |
| **fields_donations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**DonationIndexResponse**](DonationIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_donation

> <DonationShowResponse> show_donation(id, opts)

Show donation with provided ID

Show donation with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  fields_donations: 'fields_donations_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show donation with provided ID
  result = api_instance.show_donation(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->show_donation: #{e}"
end
```

#### Using the show_donation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationShowResponse>, Integer, Hash)> show_donation_with_http_info(id, opts)

```ruby
begin
  # Show donation with provided ID
  data, status_code, headers = api_instance.show_donation_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->show_donation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup  | [optional] |
| **fields_donations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**DonationShowResponse**](DonationShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_donation

> <DonationShowResponse> update_donation(id, opts)

Update an existing donation

Updates an existing donation

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::DonationsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  fields_donations: 'fields_donations_example', # String | Comma-delimited list of attributes to only return in the response
  donation_update_request: NationbuilderClient::DonationUpdateRequest.new # DonationUpdateRequest | 
}

begin
  # Update an existing donation
  result = api_instance.update_donation(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->update_donation: #{e}"
end
```

#### Using the update_donation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DonationShowResponse>, Integer, Hash)> update_donation_with_http_info(id, opts)

```ruby
begin
  # Update an existing donation
  data, status_code, headers = api_instance.update_donation_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DonationShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling DonationsApi->update_donation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup  | [optional] |
| **fields_donations** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **donation_update_request** | [**DonationUpdateRequest**](DonationUpdateRequest.md) |  | [optional] |

### Return type

[**DonationShowResponse**](DonationShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

