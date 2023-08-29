# LagoAPI::PlanUpdateInputPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the plan. | [optional] |
| **code** | **String** | The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance. | [optional] |
| **interval** | **String** | The interval used for recurring billing. It represents the frequency at which subscription billing occurs. The interval can be one of the following values: &#x60;yearly&#x60;, &#x60;quarterly&#x60;, &#x60;monthly&#x60;, or &#x60;weekly&#x60;. | [optional] |
| **description** | **String** | The description on the plan. | [optional] |
| **amount_cents** | **Integer** | The base cost of the plan, excluding any applicable taxes, that is billed on a recurring basis. This value is defined at 0 if your plan is a pay-as-you-go plan. | [optional] |
| **amount_currency** | [**Currency**](Currency.md) |  | [optional] |
| **trial_period** | **Float** | The duration in days during which the base cost of the plan is offered for free. | [optional] |
| **pay_in_advance** | **Boolean** | This field determines the billing timing for the plan. When set to &#x60;true&#x60;, the base cost of the plan is due at the beginning of each billing period. Conversely, when set to &#x60;false&#x60;, the base cost of the plan is due at the end of each billing period. | [optional] |
| **bill_charges_monthly** | **Boolean** | This field, when set to &#x60;true&#x60;, enables to invoice usage-based charges on monthly basis, even if the cadence of the plan is yearly. This allows customers to pay charges overage on a monthly basis. This can be set to true only if the plan’s interval is &#x60;yearly&#x60;. | [optional] |
| **tax_codes** | **Array&lt;String&gt;** | List of unique code used to identify the taxes. | [optional] |
| **charges** | [**Array&lt;PlanUpdateInputPlanChargesInner&gt;**](PlanUpdateInputPlanChargesInner.md) | Additional usage-based charges for this plan. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::PlanUpdateInputPlan.new(
  name: Startup,
  code: startup,
  interval: monthly,
  description: Plan for early stage startups.,
  amount_cents: 10000,
  amount_currency: null,
  trial_period: 5,
  pay_in_advance: true,
  bill_charges_monthly: null,
  tax_codes: [&quot;french_standard_vat&quot;],
  charges: [{&quot;billable_metric_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a91&quot;,&quot;charge_model&quot;:&quot;package&quot;,&quot;invoiceable&quot;:true,&quot;pay_in_advance&quot;:false,&quot;prorated&quot;:false,&quot;min_amount_cents&quot;:3000,&quot;properties&quot;:{&quot;amount&quot;:&quot;30&quot;,&quot;free_units&quot;:100,&quot;package_size&quot;:1000},&quot;group_properties&quot;:[],&quot;tax_codes&quot;:[&quot;french_standard_vat&quot;]},{&quot;billable_metric_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a92&quot;,&quot;charge_model&quot;:&quot;graduated&quot;,&quot;invoiceable&quot;:true,&quot;pay_in_advance&quot;:false,&quot;prorated&quot;:false,&quot;min_amount_cents&quot;:0,&quot;properties&quot;:{&quot;graduated_ranges&quot;:[{&quot;to_value&quot;:10,&quot;from_value&quot;:0,&quot;flat_amount&quot;:&quot;10&quot;,&quot;per_unit_amount&quot;:&quot;0.5&quot;},{&quot;to_value&quot;:null,&quot;from_value&quot;:11,&quot;flat_amount&quot;:&quot;0&quot;,&quot;per_unit_amount&quot;:&quot;0.4&quot;}]},&quot;group_properties&quot;:[]},{&quot;billable_metric_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a93&quot;,&quot;charge_model&quot;:&quot;standard&quot;,&quot;invoiceable&quot;:true,&quot;pay_in_advance&quot;:true,&quot;prorated&quot;:false,&quot;min_amount_cents&quot;:0,&quot;properties&quot;:{},&quot;group_properties&quot;:[{&quot;group_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a01&quot;,&quot;values&quot;:{&quot;amount&quot;:&quot;10&quot;}},{&quot;group_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a02&quot;,&quot;values&quot;:{&quot;amount&quot;:&quot;5&quot;}},{&quot;group_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a03&quot;,&quot;values&quot;:{&quot;amount&quot;:&quot;8&quot;}}]},{&quot;billable_metric_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a94&quot;,&quot;charge_model&quot;:&quot;volume&quot;,&quot;invoiceable&quot;:true,&quot;pay_in_advance&quot;:false,&quot;prorated&quot;:false,&quot;min_amount_cents&quot;:0,&quot;properties&quot;:{&quot;volume_ranges&quot;:[{&quot;from_value&quot;:0,&quot;to_value&quot;:100,&quot;flat_amount&quot;:&quot;0&quot;,&quot;per_unit_amount&quot;:&quot;0&quot;},{&quot;from_value&quot;:101,&quot;to_value&quot;:null,&quot;flat_amount&quot;:&quot;0&quot;,&quot;per_unit_amount&quot;:&quot;0.5&quot;}]},&quot;group_properties&quot;:[]},{&quot;billable_metric_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a95&quot;,&quot;charge_model&quot;:&quot;percentage&quot;,&quot;invoiceable&quot;:false,&quot;pay_in_advance&quot;:true,&quot;prorated&quot;:false,&quot;min_amount_cents&quot;:0,&quot;properties&quot;:{&quot;rate&quot;:&quot;1&quot;,&quot;fixed_amount&quot;:&quot;0.5&quot;,&quot;free_units_per_events&quot;:5,&quot;free_units_per_total_aggregation&quot;:&quot;500&quot;},&quot;group_properties&quot;:[]}]
)
```

