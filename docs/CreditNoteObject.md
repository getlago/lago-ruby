# LagoAPI::CreditNoteObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | The credit note unique identifier, created by Lago. |  |
| **sequential_id** | **Integer** | The sequential identifier of the credit note, specifically scoped on the associated invoice. It provides a unique numerical identifier for the credit note within the context of the invoice. |  |
| **number** | **String** | The credit note unique number. |  |
| **lago_invoice_id** | **String** | Unique identifier assigned to the invoice that the credit note belongs to |  |
| **invoice_number** | **String** | The invoice unique number, related to the credit note. |  |
| **issuing_date** | **Date** | The date of creation of the credit note. It follows the ISO 8601 date format and provides the specific date when the credit note was created. |  |
| **credit_status** | **String** | The status of the credit portion of the credit note. It indicates the current state or condition of the credit amount associated with the credit note. The possible values for this field are:  - &#x60;available&#x60;: this status indicates that an amount remains available for future usage. The credit can be applied towards future transactions or invoices. - &#x60;consumed&#x60;: this status indicates that the credit amount has been fully consumed. The remaining amount is 0, indicating that the credit has been utilized in its entirety. - &#x60;voided&#x60;: this status indicates that the remaining amount of the credit cannot be used any further. The credit has been voided and is no longer available for application or redemption. | [optional] |
| **refund_status** | **String** | The status of the refund portion of the credit note. It indicates the current state or condition of the refund associated with the credit note. The possible values for this field are:  - &#x60;pending&#x60;: this status indicates that the refund is pending execution. The refund request has been initiated but has not been processed or completed yet. - &#x60;succeeded&#x60;: this status indicates that the refund has been successfully executed. The refund amount has been processed and returned to the customer or the designated recipient. - &#x60;failed&#x60;: this status indicates that the refund failed to execute. The refund request encountered an error or unsuccessful processing, and the refund amount could not be returned. | [optional] |
| **reason** | **String** | The reason of the credit note creation. Possible values are &#x60;duplicated_charge&#x60;, &#x60;product_unsatisfactory&#x60;, &#x60;order_change&#x60;, &#x60;order_cancellation&#x60;, &#x60;fraudulent_charge&#x60; or &#x60;other&#x60;. |  |
| **description** | **String** | The description of the credit note. | [optional] |
| **currency** | [**Currency**](Currency.md) |  |  |
| **total_amount_cents** | **Integer** | The total amount of the credit note, expressed in cents. |  |
| **taxes_amount_cents** | **Integer** | The tax amount of the credit note, expressed in cents. |  |
| **taxes_rate** | **Float** | The tax rate associated with this specific credit note. |  |
| **sub_total_excluding_taxes_amount_cents** | **Integer** | The subtotal of the credit note excluding any applicable taxes, expressed in cents. |  |
| **balance_amount_cents** | **Integer** | The remaining credit note amount, expressed in cents. |  |
| **credit_amount_cents** | **Integer** | The credited amount of the credit note, expressed in cents. |  |
| **refund_amount_cents** | **Integer** | The refunded amount of the credit note, expressed in cents. |  |
| **coupons_adjustement_amount_cents** | **Integer** | The pro-rated amount of the coupons applied to the source invoice. |  |
| **created_at** | **Time** | The date when the credit note was created. It is expressed in Coordinated Universal Time (UTC). |  |
| **updated_at** | **Time** | The date when the credit note was last updated. It is expressed in Coordinated Universal Time (UTC). |  |
| **file_url** | **String** | The PDF file of the credit note. | [optional] |
| **items** | [**Array&lt;CreditNoteItemObject&gt;**](CreditNoteItemObject.md) | Array of credit note’s items. | [optional] |
| **applied_taxes** | [**Array&lt;CreditNoteAppliedTaxObject&gt;**](CreditNoteAppliedTaxObject.md) |  | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  sequential_id: 2,
  number: LAG-1234-CN2,
  lago_invoice_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  invoice_number: LAG-1234,
  issuing_date: Tue Dec 06 00:00:00 UTC 2022,
  credit_status: available,
  refund_status: pending,
  reason: other,
  description: Free text,
  currency: null,
  total_amount_cents: 120,
  taxes_amount_cents: 20,
  taxes_rate: 20,
  sub_total_excluding_taxes_amount_cents: 100,
  balance_amount_cents: 100,
  credit_amount_cents: 100,
  refund_amount_cents: 0,
  coupons_adjustement_amount_cents: 20,
  created_at: 2022-09-14T16:35:31Z,
  updated_at: 2022-09-14T16:35:31Z,
  file_url: https://getlago.com/credit_note/file,
  items: null,
  applied_taxes: null
)
```

