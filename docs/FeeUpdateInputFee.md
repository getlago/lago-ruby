# OpenapiClient::FeeUpdateInputFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_status** | **String** | The payment status of the fee. Possible values are &#x60;pending&#x60;, &#x60;succeeded&#x60;, &#x60;failed&#x60; or &#x60;refunded&#x60;. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FeeUpdateInputFee.new(
  payment_status: succeeded
)
```

