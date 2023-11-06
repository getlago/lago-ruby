# LagoAPI::CreditNoteEstimatedEstimatedCreditNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_invoice_id** | **String** | Unique identifier assigned to the invoice that the credit note belongs to |  |
| **invoice_number** | **String** | The invoice unique number, related to the credit note. |  |
| **currency** | [**Currency**](Currency.md) |  |  |
| **taxes_amount_cents** | **Integer** | The tax amount of the credit note, expressed in cents. |  |
| **taxes_rate** | **Float** | The tax rate associated with this specific credit note. |  |
| **sub_total_excluding_taxes_amount_cents** | **Integer** | The subtotal of the credit note excluding any applicable taxes, expressed in cents. |  |
| **max_creditable_amount_cents** | **Integer** | The credited amount of the credit note, expressed in cents. |  |
| **max_refundable_amount_cents** | **Integer** | The refunded amount of the credit note, expressed in cents. |  |
| **coupons_adjustment_amount_cents** | **Integer** | The pro-rated amount of the coupons applied to the source invoice. |  |
| **items** | [**Array&lt;CreditNoteEstimatedEstimatedCreditNoteItemsInner&gt;**](CreditNoteEstimatedEstimatedCreditNoteItemsInner.md) | Array of credit note’s items. |  |
| **applied_taxes** | [**Array&lt;CreditNoteEstimatedEstimatedCreditNoteAppliedTaxesInner&gt;**](CreditNoteEstimatedEstimatedCreditNoteAppliedTaxesInner.md) |  | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteEstimatedEstimatedCreditNote.new(
  lago_invoice_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  invoice_number: LAG-1234,
  currency: null,
  taxes_amount_cents: 20,
  taxes_rate: 20,
  sub_total_excluding_taxes_amount_cents: 100,
  max_creditable_amount_cents: 100,
  max_refundable_amount_cents: 0,
  coupons_adjustment_amount_cents: 20,
  items: null,
  applied_taxes: null
)
```

