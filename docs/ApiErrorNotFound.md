# LagoAPI::ApiErrorNotFound

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |
| **code** | **String** |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::ApiErrorNotFound.new(
  status: 404,
  error: Not Found,
  code: object_not_found
)
```

