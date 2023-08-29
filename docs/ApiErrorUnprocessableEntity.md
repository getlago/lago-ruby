# LagoAPI::ApiErrorUnprocessableEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |
| **code** | **String** |  |  |
| **error_details** | **Object** |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::ApiErrorUnprocessableEntity.new(
  status: 422,
  error: Unprocessable entity,
  code: validation_errors,
  error_details: null
)
```

