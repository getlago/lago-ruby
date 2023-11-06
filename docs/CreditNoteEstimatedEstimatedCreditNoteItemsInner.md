# LagoAPI::CreditNoteEstimatedEstimatedCreditNoteItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_cents** | **Integer** | The credit note’s item amount, expressed in cents. |  |
| **lago_fee_id** | **String** | Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteEstimatedEstimatedCreditNoteItemsInner.new(
  amount_cents: 100,
  lago_fee_id: 1a901a90-1a90-1a90-1a90-1a901a901a90
)
```

