# LagoAPI::FeeUpdateInputFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_status** | **String** | The payment status of the fee. Possible values are &#x60;pending&#x60;, &#x60;succeeded&#x60;, &#x60;failed&#x60; or &#x60;refunded&#x60;. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::FeeUpdateInputFee.new(
  payment_status: succeeded
)
```

