# LagoAPI::CustomerChargeUsageObjectBillableMetric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the billable metric within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the billable metric’s record within the Lago system. |  |
| **name** | **String** | The name of the billable metric used for this charge. |  |
| **code** | **String** | The code of the billable metric used for this charge. |  |
| **aggregation_type** | **String** | The aggregation type of the billable metric used for this charge. Possible values are &#x60;count_agg&#x60;, &#x60;sum_agg&#x60;, &#x60;max_agg&#x60; or &#x60;unique_count_agg&#x60;. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CustomerChargeUsageObjectBillableMetric.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  name: Storage,
  code: storage,
  aggregation_type: sum_agg
)
```

