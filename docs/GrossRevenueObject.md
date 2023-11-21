# LagoAPI::GrossRevenueObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** | Identifies the month to analyze revenue. |  |
| **amount_cents** | **Integer** | The total amount of revenue for a period, expressed in cents. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::GrossRevenueObject.new(
  month: 2023-11-01T00:00:00.000Z,
  amount_cents: 50000,
  currency: null
)
```

