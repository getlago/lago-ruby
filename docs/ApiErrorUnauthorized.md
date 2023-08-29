# LagoAPI::ApiErrorUnauthorized

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::ApiErrorUnauthorized.new(
  status: 401,
  error: Unauthorized
)
```

