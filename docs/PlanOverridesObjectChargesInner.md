# LagoAPI::PlanOverridesObjectChargesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the charge created by Lago. | [optional] |
| **billable_metric_id** | **String** | Unique identifier of the billable metric created by Lago. | [optional] |
| **invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name. | [optional] |
| **min_amount_cents** | **Integer** | The minimum spending amount required for the charge, measured in cents and excluding any applicable taxes. It indicates the minimum amount that needs to be charged for each billing period. | [optional] |
| **properties** | [**ChargeObjectProperties**](ChargeObjectProperties.md) |  | [optional] |
| **group_properties** | [**Array&lt;PlanCreateInputPlanChargesInnerGroupPropertiesInner&gt;**](PlanCreateInputPlanChargesInnerGroupPropertiesInner.md) | All charge information, sorted by groups. | [optional] |
| **tax_codes** | **Array&lt;String&gt;** | List of unique code used to identify the taxes. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::PlanOverridesObjectChargesInner.new(
  id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  billable_metric_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  invoice_display_name: Setup,
  min_amount_cents: 0,
  properties: null,
  group_properties: null,
  tax_codes: [&quot;french_standard_vat&quot;]
)
```

