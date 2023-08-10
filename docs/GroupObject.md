# OpenapiClient::GroupObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier of a specific group associated with the billable metric. |  |
| **key** | **String** | Key of a specific group associated with the billable metric. |  |
| **value** | **String** | One of the values for a specific group associated with the billable metric. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GroupObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  key: region,
  value: us-east-1
)
```

