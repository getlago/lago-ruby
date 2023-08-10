# OpenapiClient::ApiErrorForbidden

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |
| **code** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ApiErrorForbidden.new(
  status: 403,
  error: Forbidden,
  code: feature_unavailable
)
```

