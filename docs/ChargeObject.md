# LagoAPI::ChargeObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier of charge, created by Lago. |  |
| **lago_billable_metric_id** | **String** | Unique identifier of the billable metric created by Lago. |  |
| **billable_metric_code** | **String** | Unique code identifying a billable metric. |  |
| **created_at** | **Time** | The date and time when the charge was created. It is expressed in UTC format according to the ISO 8601 datetime standard. |  |
| **charge_model** | **String** | Specifies the pricing model used for the calculation of the final fee. It can be &#x60;standard&#x60;, &#x60;graduated&#x60;, &#x60;graduated_percentage&#x60;, &#x60;package&#x60;, &#x60;percentage&#x60; or &#x60;volume&#x60;. |  |
| **pay_in_advance** | **Boolean** | This field determines the billing timing for this specific usage-based charge. When set to &#x60;true&#x60;, the charge is due and invoiced immediately. Conversely, when set to &#x60;false&#x60;, the charge is due and invoiced at the end of each billing period. | [optional] |
| **invoiceable** | **Boolean** | This field specifies whether the charge should be included in a proper invoice. If set to &#x60;false&#x60;, no invoice will be issued for this charge. You can only set it to &#x60;false&#x60; when &#x60;pay_in_advance&#x60; is &#x60;true&#x60;. | [optional] |
| **prorated** | **Boolean** | Specifies whether a charge is prorated based on the remaining number of days in the billing period or billed fully.  - If set to &#x60;true&#x60;, the charge is prorated based on the remaining days in the current billing period. - If set to &#x60;false&#x60;, the charge is billed in full. - If not defined in the request, default value is &#x60;false&#x60;. | [optional] |
| **min_amount_cents** | **Integer** | The minimum spending amount required for the charge, measured in cents and excluding any applicable taxes. It indicates the minimum amount that needs to be charged for each billing period. | [optional] |
| **properties** | [**ChargeObjectProperties**](ChargeObjectProperties.md) |  | [optional] |
| **group_properties** | [**Array&lt;GroupPropertiesObject&gt;**](GroupPropertiesObject.md) | All charge information, sorted by groups. | [optional] |
| **taxes** | [**Array&lt;TaxObject&gt;**](TaxObject.md) | All taxes applied to the charge. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::ChargeObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_billable_metric_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  billable_metric_code: requests,
  created_at: 2022-09-14T16:35:31Z,
  charge_model: null,
  pay_in_advance: true,
  invoiceable: true,
  prorated: false,
  min_amount_cents: 1200,
  properties: null,
  group_properties: null,
  taxes: null
)
```

