# OpenapiClient::ApiErrorUnauthorized

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ApiErrorUnauthorized.new(
  status: 401,
  error: Unauthorized
)
```

