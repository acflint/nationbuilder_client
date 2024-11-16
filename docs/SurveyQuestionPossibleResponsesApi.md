# NationbuilderClient::SurveyQuestionPossibleResponsesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_survey_question_possible_response**](SurveyQuestionPossibleResponsesApi.md#create_survey_question_possible_response) | **POST** /api/v2/survey_question_possible_responses | Create a survey question possible response |
| [**delete_survey_question_possible_response**](SurveyQuestionPossibleResponsesApi.md#delete_survey_question_possible_response) | **DELETE** /api/v2/survey_question_possible_responses/{id} | Delete survey question possible response with provided ID |
| [**list_survey_question_possible_responses**](SurveyQuestionPossibleResponsesApi.md#list_survey_question_possible_responses) | **GET** /api/v2/survey_question_possible_responses | List all survey question possible responses in a nation |
| [**show_survey_question_possible_response**](SurveyQuestionPossibleResponsesApi.md#show_survey_question_possible_response) | **GET** /api/v2/survey_question_possible_responses/{id} | Show survey question possible response with provided ID |
| [**update_survey_question_possible_response**](SurveyQuestionPossibleResponsesApi.md#update_survey_question_possible_response) | **PATCH** /api/v2/survey_question_possible_responses/{id} | Update an existing survey question possible response |


## create_survey_question_possible_response

> <SurveyQuestionPossibleResponseShowResponse> create_survey_question_possible_response(opts)

Create a survey question possible response

Creates a survey question possible response from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionPossibleResponsesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question 
  fields_survey_question_possible_responses: 'fields_survey_question_possible_responses_example', # String | Comma-delimited list of attributes to only return in the response
  survey_question_possible_response_create_request: NationbuilderClient::SurveyQuestionPossibleResponseCreateRequest.new # SurveyQuestionPossibleResponseCreateRequest | 
}

begin
  # Create a survey question possible response
  result = api_instance.create_survey_question_possible_response(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->create_survey_question_possible_response: #{e}"
end
```

#### Using the create_survey_question_possible_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionPossibleResponseShowResponse>, Integer, Hash)> create_survey_question_possible_response_with_http_info(opts)

```ruby
begin
  # Create a survey question possible response
  data, status_code, headers = api_instance.create_survey_question_possible_response_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionPossibleResponseShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->create_survey_question_possible_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question  | [optional] |
| **fields_survey_question_possible_responses** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **survey_question_possible_response_create_request** | [**SurveyQuestionPossibleResponseCreateRequest**](SurveyQuestionPossibleResponseCreateRequest.md) |  | [optional] |

### Return type

[**SurveyQuestionPossibleResponseShowResponse**](SurveyQuestionPossibleResponseShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_survey_question_possible_response

> <EmptyMetaResponse> delete_survey_question_possible_response(id, opts)

Delete survey question possible response with provided ID

Delete survey question possible response with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionPossibleResponsesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses 
  fields_survey_question_possible_responses: 'fields_survey_question_possible_responses_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete survey question possible response with provided ID
  result = api_instance.delete_survey_question_possible_response(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->delete_survey_question_possible_response: #{e}"
end
```

#### Using the delete_survey_question_possible_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_survey_question_possible_response_with_http_info(id, opts)

```ruby
begin
  # Delete survey question possible response with provided ID
  data, status_code, headers = api_instance.delete_survey_question_possible_response_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->delete_survey_question_possible_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses  | [optional] |
| **fields_survey_question_possible_responses** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_survey_question_possible_responses

> <SurveyQuestionPossibleResponseIndexResponse> list_survey_question_possible_responses(opts)

List all survey question possible responses in a nation

Lists all survey question possible responses

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionPossibleResponsesApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question 
  fields_survey_question_possible_responses: 'fields_survey_question_possible_responses_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all survey question possible responses in a nation
  result = api_instance.list_survey_question_possible_responses(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->list_survey_question_possible_responses: #{e}"
end
```

#### Using the list_survey_question_possible_responses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionPossibleResponseIndexResponse>, Integer, Hash)> list_survey_question_possible_responses_with_http_info(opts)

```ruby
begin
  # List all survey question possible responses in a nation
  data, status_code, headers = api_instance.list_survey_question_possible_responses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionPossibleResponseIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->list_survey_question_possible_responses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question  | [optional] |
| **fields_survey_question_possible_responses** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SurveyQuestionPossibleResponseIndexResponse**](SurveyQuestionPossibleResponseIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_survey_question_possible_response

> <SurveyQuestionPossibleResponseShowResponse> show_survey_question_possible_response(id, opts)

Show survey question possible response with provided ID

Show survey question possible response with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionPossibleResponsesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses 
  fields_survey_question_possible_responses: 'fields_survey_question_possible_responses_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show survey question possible response with provided ID
  result = api_instance.show_survey_question_possible_response(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->show_survey_question_possible_response: #{e}"
end
```

#### Using the show_survey_question_possible_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionPossibleResponseShowResponse>, Integer, Hash)> show_survey_question_possible_response_with_http_info(id, opts)

```ruby
begin
  # Show survey question possible response with provided ID
  data, status_code, headers = api_instance.show_survey_question_possible_response_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionPossibleResponseShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->show_survey_question_possible_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses  | [optional] |
| **fields_survey_question_possible_responses** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**SurveyQuestionPossibleResponseShowResponse**](SurveyQuestionPossibleResponseShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_survey_question_possible_response

> <SurveyQuestionPossibleResponseShowResponse> update_survey_question_possible_response(id, opts)

Update an existing survey question possible response

Updates an existing survey question possible response

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionPossibleResponsesApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses 
  fields_survey_question_possible_responses: 'fields_survey_question_possible_responses_example', # String | Comma-delimited list of attributes to only return in the response
  survey_question_possible_response_update_request: NationbuilderClient::SurveyQuestionPossibleResponseUpdateRequest.new # SurveyQuestionPossibleResponseUpdateRequest | 
}

begin
  # Update an existing survey question possible response
  result = api_instance.update_survey_question_possible_response(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->update_survey_question_possible_response: #{e}"
end
```

#### Using the update_survey_question_possible_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionPossibleResponseShowResponse>, Integer, Hash)> update_survey_question_possible_response_with_http_info(id, opts)

```ruby
begin
  # Update an existing survey question possible response
  data, status_code, headers = api_instance.update_survey_question_possible_response_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionPossibleResponseShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionPossibleResponsesApi->update_survey_question_possible_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses  | [optional] |
| **fields_survey_question_possible_responses** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **survey_question_possible_response_update_request** | [**SurveyQuestionPossibleResponseUpdateRequest**](SurveyQuestionPossibleResponseUpdateRequest.md) |  | [optional] |

### Return type

[**SurveyQuestionPossibleResponseShowResponse**](SurveyQuestionPossibleResponseShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

