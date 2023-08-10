# OpenapiClient::ApiErrorNotAllowed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |
| **code** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ApiErrorNotAllowed.new(
  status: 405,
  error: Method Not Allowed,
  code: not_allowed
)
```

