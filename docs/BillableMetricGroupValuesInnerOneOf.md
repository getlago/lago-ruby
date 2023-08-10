# OpenapiClient::BillableMetricGroupValuesInnerOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Name of the event property used to group values. |  |
| **values** | **Array&lt;String&gt;** | Array of strings representing all possible values. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BillableMetricGroupValuesInnerOneOf.new(
  key: region,
  values: [&quot;us-east-1&quot;,&quot;us-east-2&quot;,&quot;eu-west-1&quot;]
)
```

