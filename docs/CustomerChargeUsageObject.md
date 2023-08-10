# OpenapiClient::CustomerChargeUsageObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **units** | **String** | The number of units consumed by the customer for a specific charge item. |  |
| **amount_cents** | **Integer** | The amount in cents, tax excluded, consumed by the customer for a specific charge item. |  |
| **amount_currency** | [**Currency**](Currency.md) |  |  |
| **charge** | [**CustomerChargeUsageObjectCharge**](CustomerChargeUsageObjectCharge.md) |  |  |
| **billable_metric** | [**CustomerChargeUsageObjectBillableMetric**](CustomerChargeUsageObjectBillableMetric.md) |  |  |
| **groups** | [**Array&lt;CustomerChargeUsageObjectGroupsInner&gt;**](CustomerChargeUsageObjectGroupsInner.md) | Array of group object, representing multiple dimensions for a charge item. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomerChargeUsageObject.new(
  units: 1.0,
  amount_cents: 123,
  amount_currency: null,
  charge: null,
  billable_metric: null,
  groups: null
)
```

