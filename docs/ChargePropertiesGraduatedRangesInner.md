# OpenapiClient::ChargePropertiesGraduatedRangesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_value** | **Integer** | Specifies the lower value of a tier for a &#x60;graduated&#x60; charge model. It must be either 0 or the previous range&#39;s &#x60;to_value + 1&#x60; to maintain the proper sequence of values. |  |
| **to_value** | **Integer** | Specifies the highest value of a tier for a &#x60;graduated&#x60; charge model. - This value must be higher than the from_value of the same tier. - This value must be null for the last tier. |  |
| **flat_amount** | **String** | The flat amount for a whole tier, excluding tax, for a &#x60;graduated&#x60; charge model. It is expressed as a decimal value. |  |
| **per_unit_amount** | **String** | The unit price, excluding tax, for a specific tier of a &#x60;graduated&#x60; charge model. It is expressed as a decimal value. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ChargePropertiesGraduatedRangesInner.new(
  from_value: 0,
  to_value: 10,
  flat_amount: 10,
  per_unit_amount: 0.5
)
```

