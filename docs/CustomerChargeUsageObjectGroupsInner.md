# LagoAPI::CustomerChargeUsageObjectGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the group within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the group record within the Lago system. | [optional] |
| **key** | **String** | The group key, only returned for groups with two dimensions. | [optional] |
| **value** | **String** | The group value. | [optional] |
| **units** | **String** | The number of units consumed for a specific group related to a charge item. | [optional] |
| **events_count** | **Integer** | The quantity of usage events that have been recorded for a particular charge during the specified time period. These events may also be referred to as the number of transactions in some contexts. | [optional] |
| **amount_cents** | **Integer** | The amount in cents, tax excluded, consumed for a specific group related to a charge item. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CustomerChargeUsageObjectGroupsInner.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  key: null,
  value: europe,
  units: 0.9,
  events_count: 10,
  amount_cents: 1000
)
```

