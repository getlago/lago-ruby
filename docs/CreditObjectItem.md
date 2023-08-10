# OpenapiClient::CreditObjectItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the credit item within the Lago application. |  |
| **type** | **String** | The type of credit applied. Possible values are &#x60;coupon&#x60; or &#x60;credit_note&#x60;. |  |
| **code** | **String** | The code of the credit applied. It can be the code of the coupon attached to the credit or the credit note&#39;s number. |  |
| **name** | **String** | The name of the credit applied. It can be the name of the coupon attached to the credit or the initial invoice&#39;s number linked to the credit note. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreditObjectItem.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  type: coupon,
  code: startup_deal,
  name: Startup Deal
)
```

