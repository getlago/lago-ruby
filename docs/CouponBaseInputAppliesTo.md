# LagoAPI::CouponBaseInputAppliesTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_codes** | **Array&lt;String&gt;** | An array of plan codes to which the coupon is applicable. By specifying the plan codes in this field, you can restrict the coupon&#39;s usage to specific plans only. | [optional] |
| **billable_metric_codes** | **Array&lt;String&gt;** | An array of billable metric codes to which the coupon is applicable. By specifying the billable metric codes in this field, you can restrict the coupon&#39;s usage to specific metrics only. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CouponBaseInputAppliesTo.new(
  plan_codes: [&quot;startup_plan&quot;],
  billable_metric_codes: []
)
```

