# OpenapiClient::PaginationMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Integer** | Current page. |  |
| **next_page** | **Integer** | Next page. | [optional] |
| **prev_page** | **Integer** | Previous page. | [optional] |
| **total_pages** | **Integer** | Total number of pages. |  |
| **total_count** | **Integer** | Total number of records. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaginationMeta.new(
  current_page: 2,
  next_page: 3,
  prev_page: 1,
  total_pages: 4,
  total_count: 70
)
```

