# LagoAPI::BillableMetricGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Name of the event property used to group values. |  |
| **values** | [**Array&lt;BillableMetricGroupValuesInner&gt;**](BillableMetricGroupValuesInner.md) | Array of strings or objects representing all possible values. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::BillableMetricGroup.new(
  key: region,
  values: [&quot;us-east-1&quot;,&quot;us-east-2&quot;,&quot;eu-west-1&quot;]
)
```

