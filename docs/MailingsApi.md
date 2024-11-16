# NationbuilderClient::MailingsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_mailings**](MailingsApi.md#list_mailings) | **GET** /api/v2/mailings | List all mailings in a nation |
| [**show_mailing**](MailingsApi.md#show_mailing) | **GET** /api/v2/mailings/{id} | Show mailing with provided ID |


## list_mailings

> <MailingIndexResponse> list_mailings(opts)

List all mailings in a nation

Lists all mailings

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MailingsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author 
  fields_mailings: 'fields_mailings_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all mailings in a nation
  result = api_instance.list_mailings(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MailingsApi->list_mailings: #{e}"
end
```

#### Using the list_mailings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MailingIndexResponse>, Integer, Hash)> list_mailings_with_http_info(opts)

```ruby
begin
  # List all mailings in a nation
  data, status_code, headers = api_instance.list_mailings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MailingIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MailingsApi->list_mailings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author  | [optional] |
| **fields_mailings** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**MailingIndexResponse**](MailingIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_mailing

> <MailingShowResponse> show_mailing(id, opts)

Show mailing with provided ID

Show mailing with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::MailingsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author 
  fields_mailings: 'fields_mailings_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show mailing with provided ID
  result = api_instance.show_mailing(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MailingsApi->show_mailing: #{e}"
end
```

#### Using the show_mailing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MailingShowResponse>, Integer, Hash)> show_mailing_with_http_info(id, opts)

```ruby
begin
  # Show mailing with provided ID
  data, status_code, headers = api_instance.show_mailing_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MailingShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling MailingsApi->show_mailing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author  | [optional] |
| **fields_mailings** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**MailingShowResponse**](MailingShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

