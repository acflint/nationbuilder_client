# NationbuilderClient::ImportReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the import. | [optional] |
| **type** | **String** | The import type. | [optional] |
| **is_overwritable** | **Boolean** | Flag used to determine whether non-empty fields are overwritten. Defaults to false. | [optional][default to false] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **file_name** | **String** | File name of the import. | [optional] |
| **tag_list** | **String** | Assign these tags to the imported signups. | [optional] |
| **content_head** | **String** | Comma separated list containing attribute names for the import. | [optional] |
| **rows_successful** | **Integer** | Number of successfully imported rows. | [optional] |
| **rows_unsuccessful** | **Integer** | Number of unsuccessfully imported rows. | [optional] |
| **started_at** | **String** | When the import started. | [optional] |
| **finished_at** | **String** | When the import finished. | [optional] |
| **error_lines** | **String** | Errors created during the import. | [optional] |
| **rows_updated** | **Integer** | Number of updated rows. | [optional] |
| **lines_count** | **Integer** | Number of lines in the import. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ImportReadOnlyAttributes.new(
  status: in_progress,
  type: People,
  is_overwritable: false,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00,
  file_name: DonationsImport.csv,
  tag_list: donations-last-week,
  content_head: id, first_name, last_name, amount, amount_in_cents\r\n, Joe, Bloggs, 100, 10000,
  rows_successful: 1,
  rows_unsuccessful: 1,
  started_at: 2019-10-26T10:00:00-04:00,
  finished_at: 2019-10-26T10:00:00-04:00,
  error_lines: error: Joe Bloggs,Amount must be at least $0.01,
  rows_updated: 1,
  lines_count: 1
)
```

