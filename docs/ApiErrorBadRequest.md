# LagoAPI::ApiErrorBadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::ApiErrorBadRequest.new(
  status: 400,
  error: Bad request
)
```

