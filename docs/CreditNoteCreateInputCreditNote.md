# LagoAPI::CreditNoteCreateInputCreditNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** | The invoice unique identifier, created by Lago. |  |
| **reason** | **String** | The reason of the credit note creation. Possible values are &#x60;duplicated_charge&#x60;, &#x60;product_unsatisfactory&#x60;, &#x60;order_change&#x60;, &#x60;order_cancellation&#x60;, &#x60;fraudulent_charge&#x60; or &#x60;other&#x60;. | [optional] |
| **description** | **String** | The description of the credit note. | [optional] |
| **credit_amount_cents** | **Integer** | The total amount to be credited on the customer balance. | [optional] |
| **refund_amount_cents** | **Integer** | The total amount to be refunded to the customer. | [optional] |
| **items** | [**Array&lt;CreditNoteEstimateInputCreditNoteItemsInner&gt;**](CreditNoteEstimateInputCreditNoteItemsInner.md) | The list of credit note’s items. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteCreateInputCreditNote.new(
  invoice_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  reason: duplicated_charge,
  description: description,
  credit_amount_cents: 10,
  refund_amount_cents: 5,
  items: [{&quot;fee_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a90&quot;,&quot;amount_cents&quot;:10},{&quot;fee_id&quot;:&quot;1a901a90-1a90-1a90-1a90-1a901a901a91&quot;,&quot;amount_cents&quot;:5}]
)
```

