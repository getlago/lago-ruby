# LagoAPI::CreditNoteEstimateInputCreditNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** | The invoice unique identifier, created by Lago. |  |
| **items** | [**Array&lt;CreditNoteEstimateInputCreditNoteItemsInner&gt;**](CreditNoteEstimateInputCreditNoteItemsInner.md) | The list of credit note’s items. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteEstimateInputCreditNote.new(
  invoice_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  items: [{&quot;fee_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a90&quot;,&quot;amount_cents&quot;:10},{&quot;fee_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a91&quot;,&quot;amount_cents&quot;:5}]
)
```

