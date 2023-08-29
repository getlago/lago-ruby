# LagoAPI::BillableMetricsPaginated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billable_metrics** | [**Array&lt;BillableMetricObject&gt;**](BillableMetricObject.md) |  |  |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::BillableMetricsPaginated.new(
  billable_metrics: null,
  meta: null
)
```

