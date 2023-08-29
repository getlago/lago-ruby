# LagoAPI::CreditNoteItemObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | The credit note’s item unique identifier, created by Lago. |  |
| **amount_cents** | **Integer** | The credit note’s item amount, expressed in cents. |  |
| **amount_currency** | [**Currency**](Currency.md) |  |  |
| **fee** | [**CreditNoteItemObjectFee**](CreditNoteItemObjectFee.md) |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteItemObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  amount_cents: 100,
  amount_currency: null,
  fee: null
)
```

