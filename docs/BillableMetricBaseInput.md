# OpenapiClient::BillableMetricBaseInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the billable metric. | [optional] |
| **code** | **String** | Unique code used to identify the billable metric associated with the API request. This code associates each event with the correct metric. | [optional] |
| **description** | **String** | Internal description of the billable metric. | [optional] |
| **recurring** | **Boolean** | Defines if the billable metric is persisted billing period over billing period.  - If set to &#x60;true&#x60;: the accumulated number of units calculated from the previous billing period is persisted to the next billing period. - If set to &#x60;false&#x60;: the accumulated number of units is reset to 0 at the end of the billing period. - If not defined in the request, default value is &#x60;false&#x60;. | [optional] |
| **field_name** | **String** | Property of the billable metric used for aggregating usage data. This field is not required for &#x60;count_agg&#x60;. | [optional] |
| **aggregation_type** | **String** | Aggregation method used to compute usage for this billable metric. Possible values are &#x60;count_agg&#x60;, &#x60;sum_agg&#x60;, &#x60;max_agg&#x60; or &#x60;unique_count_agg&#x60;. | [optional] |
| **group** | [**BillableMetricGroup**](BillableMetricGroup.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BillableMetricBaseInput.new(
  name: Storage,
  code: storage,
  description: GB of storage used in my application,
  recurring: false,
  field_name: gb,
  aggregation_type: sum_agg,
  group: null
)
```

