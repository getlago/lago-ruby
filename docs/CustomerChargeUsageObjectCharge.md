# OpenapiClient::CustomerChargeUsageObjectCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the charge within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the charge’s record within the Lago system. |  |
| **charge_model** | **String** | The pricing model applied to this charge. Possible values are standard, &#x60;graduated&#x60;, &#x60;percentage&#x60;, &#x60;package&#x60; or &#x60;volume&#x60;. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomerChargeUsageObjectCharge.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  charge_model: graduated
)
```

