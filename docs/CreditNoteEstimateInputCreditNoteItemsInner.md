# LagoAPI::CreditNoteEstimateInputCreditNoteItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_id** | **String** | The fee unique identifier, created by Lago. |  |
| **amount_cents** | **Integer** | The amount of the credit note item, expressed in cents. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteEstimateInputCreditNoteItemsInner.new(
  fee_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  amount_cents: 10
)
```

