# LagoAPI::AppliedCouponInputAppliedCoupon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **coupon_code** | **String** | Unique code used to identify the coupon. |  |
| **frequency** | **String** | The type of frequency for the coupon. It can have three possible values: &#x60;once&#x60;, &#x60;recurring&#x60; or &#x60;forever&#x60;.  - If set to &#x60;once&#x60;, the coupon is applicable only for a single use. - If set to &#x60;recurring&#x60;, the coupon can be used multiple times for recurring billing periods. - If set to &#x60;forever&#x60;, the coupon has unlimited usage and can be applied indefinitely. | [optional] |
| **frequency_duration** | **Integer** | Specifies the number of billing periods to which the coupon applies. This field is required only for coupons with a &#x60;recurring&#x60; frequency type | [optional] |
| **amount_cents** | **Integer** | The amount of the coupon in cents. This field is required only for coupon with &#x60;fixed_amount&#x60; type. | [optional] |
| **amount_currency** | [**Currency**](Currency.md) |  | [optional] |
| **percentage_rate** | **String** | The percentage rate of the coupon. This field is required only for coupons with a &#x60;percentage&#x60; coupon type. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::AppliedCouponInputAppliedCoupon.new(
  external_customer_id: 5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba,
  coupon_code: startup_deal,
  frequency: recurring,
  frequency_duration: 3,
  amount_cents: 2000,
  amount_currency: null,
  percentage_rate: null
)
```

