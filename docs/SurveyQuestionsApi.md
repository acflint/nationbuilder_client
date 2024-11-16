# NationbuilderClient::SurveyQuestionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_survey_question**](SurveyQuestionsApi.md#create_survey_question) | **POST** /api/v2/survey_questions | Create a survey question |
| [**delete_survey_question**](SurveyQuestionsApi.md#delete_survey_question) | **DELETE** /api/v2/survey_questions/{id} | Delete survey question with provided ID |
| [**list_survey_questions**](SurveyQuestionsApi.md#list_survey_questions) | **GET** /api/v2/survey_questions | List all survey questions in a nation |
| [**show_survey_question**](SurveyQuestionsApi.md#show_survey_question) | **GET** /api/v2/survey_questions/{id} | Show survey question with provided ID |
| [**update_survey_question**](SurveyQuestionsApi.md#update_survey_question) | **PATCH** /api/v2/survey_questions/{id} | Update an existing survey question |


## create_survey_question

> <SurveyQuestionShowResponse> create_survey_question(opts)

Create a survey question

Creates a survey question from given data

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author 
  fields_survey_questions: 'fields_survey_questions_example', # String | Comma-delimited list of attributes to only return in the response
  survey_question_create_request: NationbuilderClient::SurveyQuestionCreateRequest.new # SurveyQuestionCreateRequest | 
}

begin
  # Create a survey question
  result = api_instance.create_survey_question(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->create_survey_question: #{e}"
end
```

#### Using the create_survey_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionShowResponse>, Integer, Hash)> create_survey_question_with_http_info(opts)

```ruby
begin
  # Create a survey question
  data, status_code, headers = api_instance.create_survey_question_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->create_survey_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author  | [optional] |
| **fields_survey_questions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **survey_question_create_request** | [**SurveyQuestionCreateRequest**](SurveyQuestionCreateRequest.md) |  | [optional] |

### Return type

[**SurveyQuestionShowResponse**](SurveyQuestionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_survey_question

> <EmptyMetaResponse> delete_survey_question(id, opts)

Delete survey question with provided ID

Delete survey question with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author, survey_question_responses, survey_question_possible_responses 
  fields_survey_questions: 'fields_survey_questions_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Delete survey question with provided ID
  result = api_instance.delete_survey_question(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->delete_survey_question: #{e}"
end
```

#### Using the delete_survey_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmptyMetaResponse>, Integer, Hash)> delete_survey_question_with_http_info(id, opts)

```ruby
begin
  # Delete survey question with provided ID
  data, status_code, headers = api_instance.delete_survey_question_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmptyMetaResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->delete_survey_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author, survey_question_responses, survey_question_possible_responses  | [optional] |
| **fields_survey_questions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**EmptyMetaResponse**](EmptyMetaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_survey_questions

> <SurveyQuestionIndexResponse> list_survey_questions(opts)

List all survey questions in a nation

Lists all survey questions

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionsApi.new
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author 
  fields_survey_questions: 'fields_survey_questions_example', # String | Comma-delimited list of attributes to only return in the response
  page_number: 'page_number_example', # String | Page number to list (starting at 1)
  page_size: 'page_size_example' # String | Number of results to display per page (default: 20, max: 100, min: 1)
}

begin
  # List all survey questions in a nation
  result = api_instance.list_survey_questions(opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->list_survey_questions: #{e}"
end
```

#### Using the list_survey_questions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionIndexResponse>, Integer, Hash)> list_survey_questions_with_http_info(opts)

```ruby
begin
  # List all survey questions in a nation
  data, status_code, headers = api_instance.list_survey_questions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionIndexResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->list_survey_questions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author  | [optional] |
| **fields_survey_questions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **page_number** | **String** | Page number to list (starting at 1) | [optional] |
| **page_size** | **String** | Number of results to display per page (default: 20, max: 100, min: 1) | [optional] |

### Return type

[**SurveyQuestionIndexResponse**](SurveyQuestionIndexResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_survey_question

> <SurveyQuestionShowResponse> show_survey_question(id, opts)

Show survey question with provided ID

Show survey question with provided ID

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author, survey_question_responses, survey_question_possible_responses 
  fields_survey_questions: 'fields_survey_questions_example' # String | Comma-delimited list of attributes to only return in the response
}

begin
  # Show survey question with provided ID
  result = api_instance.show_survey_question(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->show_survey_question: #{e}"
end
```

#### Using the show_survey_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionShowResponse>, Integer, Hash)> show_survey_question_with_http_info(id, opts)

```ruby
begin
  # Show survey question with provided ID
  data, status_code, headers = api_instance.show_survey_question_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->show_survey_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author, survey_question_responses, survey_question_possible_responses  | [optional] |
| **fields_survey_questions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |

### Return type

[**SurveyQuestionShowResponse**](SurveyQuestionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_survey_question

> <SurveyQuestionShowResponse> update_survey_question(id, opts)

Update an existing survey question

Updates an existing survey question

### Examples

```ruby
require 'time'
require 'nationbuilder_client'
# setup authorization
NationbuilderClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = NationbuilderClient::SurveyQuestionsApi.new
id = 'id_example' # String | id
opts = {
  include: 'include_example', # String | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author, survey_question_responses, survey_question_possible_responses 
  fields_survey_questions: 'fields_survey_questions_example', # String | Comma-delimited list of attributes to only return in the response
  survey_question_update_request: NationbuilderClient::SurveyQuestionUpdateRequest.new # SurveyQuestionUpdateRequest | 
}

begin
  # Update an existing survey question
  result = api_instance.update_survey_question(id, opts)
  p result
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->update_survey_question: #{e}"
end
```

#### Using the update_survey_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SurveyQuestionShowResponse>, Integer, Hash)> update_survey_question_with_http_info(id, opts)

```ruby
begin
  # Update an existing survey question
  data, status_code, headers = api_instance.update_survey_question_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SurveyQuestionShowResponse>
rescue NationbuilderClient::ApiError => e
  puts "Error when calling SurveyQuestionsApi->update_survey_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **include** | **String** | Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey, author, survey_question_responses, survey_question_possible_responses  | [optional] |
| **fields_survey_questions** | **String** | Comma-delimited list of attributes to only return in the response | [optional] |
| **survey_question_update_request** | [**SurveyQuestionUpdateRequest**](SurveyQuestionUpdateRequest.md) |  | [optional] |

### Return type

[**SurveyQuestionShowResponse**](SurveyQuestionShowResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

