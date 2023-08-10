# OpenapiClient::ApiErrorNotFound

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **error** | **String** |  |  |
| **code** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ApiErrorNotFound.new(
  status: 404,
  error: Not Found,
  code: object_not_found
)
```

