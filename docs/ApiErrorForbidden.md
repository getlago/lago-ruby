# LagoAPI::ApiErrorForbidden

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |
| **code** | **String** |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::ApiErrorForbidden.new(
  status: 403,
  error: Forbidden,
  code: feature_unavailable
)
```

