# LagoAPI::MrrObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** | Identifies the month to analyze MRR. |  |
| **amount_cents** | **Integer** | The total amount of MRR, expressed in cents. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::MrrObject.new(
  month: 2023-11-01T00:00:00.000Z,
  amount_cents: 50000,
  currency: null
)
```

