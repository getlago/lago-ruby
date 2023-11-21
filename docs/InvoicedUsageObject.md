# LagoAPI::InvoicedUsageObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** | Identifies the month to analyze revenue. |  |
| **code** | **String** | The code of the usage-based billable metrics. | [optional] |
| **amount_cents** | **Integer** | The total amount of revenue for a period, expressed in cents. |  |
| **currency** | [**Currency**](Currency.md) |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::InvoicedUsageObject.new(
  month: 2023-11-01T00:00:00.000Z,
  code: code1,
  amount_cents: 50000,
  currency: null
)
```

