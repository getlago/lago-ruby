# LagoAPI::PlanOverridesObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_cents** | **Integer** | The base cost of the plan, excluding any applicable taxes, that is billed on a recurring basis. This value is defined at 0 if your plan is a pay-as-you-go plan. | [optional] |
| **amount_currency** | [**Currency**](Currency.md) |  | [optional] |
| **description** | **String** | The description on the plan. | [optional] |
| **invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the plan will be used as the default display name. | [optional] |
| **name** | **String** | The name of the plan. | [optional] |
| **tax_codes** | **Array&lt;String&gt;** | List of unique code used to identify the taxes. | [optional] |
| **trial_period** | **Float** | The duration in days during which the base cost of the plan is offered for free. | [optional] |
| **charges** | [**Array&lt;PlanOverridesObjectChargesInner&gt;**](PlanOverridesObjectChargesInner.md) | Additional usage-based charges for this plan. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::PlanOverridesObject.new(
  amount_cents: 10000,
  amount_currency: null,
  description: Plan for early stage startups.,
  invoice_display_name: Startup plan,
  name: Startup,
  tax_codes: [&quot;french_standard_vat&quot;],
  trial_period: 5,
  charges: null
)
```

