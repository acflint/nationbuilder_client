# NationbuilderClient::SitesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_sites**](SitesApi.md#list_sites) | **GET** /api/v2/sites | List all sites in a nation |


## list_sites

> <SiteIndexResponse> list_sites(opts)

List all sites in a nation

Lists all sites

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SitesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_sites: 'fields_sites_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all sites in a nation
  result = api_instance.list_sites(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SitesApi->list_sites: #{e}"
end
```

#### Using the list_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SiteIndexResponse>, Integer, Hash)> list_sites_with_http_info(opts)

```ruby
begin
  # List all sites in a nation
  data, status_code, headers = api_instance.list_sites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SiteIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SitesApi->list_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_sites** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SiteIndexResponse**](SiteIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

