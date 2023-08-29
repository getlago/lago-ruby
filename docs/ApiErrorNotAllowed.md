# LagoAPI::ApiErrorNotAllowed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |
| **code** | **String** |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::ApiErrorNotAllowed.new(
  status: 405,
  error: Method Not Allowed,
  code: not_allowed
)
```

