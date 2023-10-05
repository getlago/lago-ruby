# LagoAPI::BillableMetricObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier of the billable metric created by Lago. |  |
| **name** | **String** | Name of the billable metric. |  |
| **code** | **String** | Unique code used to identify the billable metric associated with the API request. This code associates each event with the correct metric. |  |
| **description** | **String** | Internal description of the billable metric. | [optional] |
| **recurring** | **Boolean** | Defines if the billable metric is persisted billing period over billing period.  - If set to &#x60;true&#x60;: the accumulated number of units calculated from the previous billing period is persisted to the next billing period. - If set to &#x60;false&#x60;: the accumulated number of units is reset to 0 at the end of the billing period. - If not defined in the request, default value is &#x60;false&#x60;. |  |
| **created_at** | **Time** | Creation date of the billable metric. |  |
| **field_name** | **String** | Property of the billable metric used for aggregating usage data. This field is not required for &#x60;count_agg&#x60;. | [optional] |
| **aggregation_type** | **String** | Aggregation method used to compute usage for this billable metric. |  |
| **weighted_interval** | **String** | Parameter exclusively utilized in conjunction with the &#x60;weighted_sum&#x60; aggregation type. It serves to adjust the aggregation result by assigning weights and proration to the result based on time intervals. When this field is not provided, the default time interval is assumed to be in &#x60;seconds&#x60;. | [optional] |
| **group** | [**BillableMetricGroup**](BillableMetricGroup.md) |  | [optional] |
| **active_subscriptions_count** | **Integer** | Number of active subscriptions using this billable metric. |  |
| **draft_invoices_count** | **Integer** | Number of draft invoices for which this billable metric is listed as an invoice item. |  |
| **plans_count** | **Integer** | Number of plans using this billable metric. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::BillableMetricObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  name: Storage,
  code: storage,
  description: GB of storage used in my application,
  recurring: false,
  created_at: 2022-09-14T16:35:31Z,
  field_name: gb,
  aggregation_type: sum_agg,
  weighted_interval: seconds,
  group: null,
  active_subscriptions_count: 4,
  draft_invoices_count: 10,
  plans_count: 4
)
```

