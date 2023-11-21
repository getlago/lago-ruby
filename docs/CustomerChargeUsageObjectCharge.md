# LagoAPI::CustomerChargeUsageObjectCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the charge within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the charge’s record within the Lago system. |  |
| **charge_model** | **String** | The pricing model applied to this charge. Possible values are standard, &#x60;graduated&#x60;, &#x60;percentage&#x60;, &#x60;package&#x60; or &#x60;volume&#x60;. |  |
| **invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CustomerChargeUsageObjectCharge.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  charge_model: graduated,
  invoice_display_name: Setup
)
```

