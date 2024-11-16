# NationbuilderClient::SurveysApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_survey**](SurveysApi.md#create_survey) | **POST** /api/v2/surveys | Create a survey |
| [**delete_survey**](SurveysApi.md#delete_survey) | **DELETE** /api/v2/surveys/{id} | Delete survey with provided ID |
| [**list_surveys**](SurveysApi.md#list_surveys) | **GET** /api/v2/surveys | List all surveys in a nation |
| [**show_survey**](SurveysApi.md#show_survey) | **GET** /api/v2/surveys/{id} | Show survey with provided ID |
| [**update_survey**](SurveysApi.md#update_survey) | **PATCH** /api/v2/surveys/{id} | Update an existing survey |


## create_survey

> <SurveyShowResponse> create_survey(opts)

Create a survey

Creates a survey from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveysApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_surveys: 'fields_surveys_example', # String | Comma-delimited list of attributes to only return in the response
  survey_create_request: NationbuilderClient::SurveyCreateRequest.new # SurveyCreateRequest | 
}

begin
  # Create a survey
  result = api_instance.create_survey(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->create_survey: #{e}"
end
```

#### Using the create_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyShowResponse>, Integer, Hash)> create_survey_with_http_info(opts)

```ruby
begin
  # Create a survey
  data, status_code, headers = api_instance.create_survey_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->create_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_surveys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **survey_create_request** | [**SurveyCreateRequest**](SurveyCreateRequest.md) |  | [optional] |

### Return type

[**SurveyShowResponse**](SurveyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_survey

> <EmptyMetaResponse> delete_survey(id, opts)

Delete survey with provided ID

Delete survey with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveysApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_questions 
  fields_surveys: 'fields_surveys_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete survey with provided ID
  result = api_instance.delete_survey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->delete_survey: #{e}"
end
```

#### Using the delete_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_survey_with_http_info(id, opts)

```ruby
begin
  # Delete survey with provided ID
  data, status_code, headers = api_instance.delete_survey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->delete_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_questions  | [optional] |
| **fields_surveys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_surveys

> <SurveyIndexResponse> list_surveys(opts)

List all surveys in a nation

Lists all surveys

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveysApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  fields_surveys: 'fields_surveys_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all surveys in a nation
  result = api_instance.list_surveys(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->list_surveys: #{e}"
end
```

#### Using the list_surveys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyIndexResponse>, Integer, Hash)> list_surveys_with_http_info(opts)

```ruby
begin
  # List all surveys in a nation
  data, status_code, headers = api_instance.list_surveys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->list_surveys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)  | [optional] |
| **fields_surveys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SurveyIndexResponse**](SurveyIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_survey

> <SurveyShowResponse> show_survey(id, opts)

Show survey with provided ID

Show survey with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveysApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_questions 
  fields_surveys: 'fields_surveys_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show survey with provided ID
  result = api_instance.show_survey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->show_survey: #{e}"
end
```

#### Using the show_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyShowResponse>, Integer, Hash)> show_survey_with_http_info(id, opts)

```ruby
begin
  # Show survey with provided ID
  data, status_code, headers = api_instance.show_survey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->show_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_questions  | [optional] |
| **fields_surveys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**SurveyShowResponse**](SurveyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_survey

> <SurveyShowResponse> update_survey(id, opts)

Update an existing survey

Updates an existing survey

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveysApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_questions 
  fields_surveys: 'fields_surveys_example', # String | Comma-delimited list of attributes to only return in the response
  survey_update_request: NationbuilderClient::SurveyUpdateRequest.new # SurveyUpdateRequest | 
}

begin
  # Update an existing survey
  result = api_instance.update_survey(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->update_survey: #{e}"
end
```

#### Using the update_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyShowResponse>, Integer, Hash)> update_survey_with_http_info(id, opts)

```ruby
begin
  # Update an existing survey
  data, status_code, headers = api_instance.update_survey_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveysApi->update_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_questions  | [optional] |
| **fields_surveys** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **survey_update_request** | [**SurveyUpdateRequest**](SurveyUpdateRequest.md) |  | [optional] |

### Return type

[**SurveyShowResponse**](SurveyShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

