# LagoAPI::OutstandingInvoiceObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** | Identifies the month to analyze revenue. |  |
| **payment_status** | **String** | The payment status of the invoices. | [optional] |
| **invoices_count** | **Integer** | Contains invoices count. |  |
| **amount_cents** | **Integer** | The total amount of revenue for a period, expressed in cents. |  |
| **currency** | [**Currency**](Currency.md) |  | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::OutstandingInvoiceObject.new(
  month: 2023-11-01T00:00:00.000Z,
  payment_status: succeeded,
  invoices_count: 10,
  amount_cents: 50000,
  currency: null
)
```

