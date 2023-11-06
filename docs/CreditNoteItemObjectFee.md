# LagoAPI::CreditNoteItemObjectFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system. | [optional] |
| **lago_group_id** | **String** | Unique identifier assigned to the group that the fee belongs to | [optional] |
| **lago_invoice_id** | **String** | Unique identifier assigned to the invoice that the fee belongs to | [optional] |
| **lago_true_up_fee_id** | **String** | Unique identifier assigned to the true-up fee when a minimum has been set to the charge. This identifier helps to distinguish and manage the true-up fee associated with the charge, which may be applicable when a minimum threshold or limit is set for the charge amount. | [optional] |
| **lago_true_up_parent_fee_id** | **String** | Unique identifier assigned to the parent fee on which the true-up fee is assigned. This identifier establishes the relationship between the parent fee and the associated true-up fee. | [optional] |
| **lago_subscription_id** | **String** | Unique identifier assigned to the subscription, created by Lago. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (&#x60;pay_in_advance&#x60; is set to true). | [optional] |
| **lago_customer_id** | **String** | Unique identifier assigned to the customer, created by Lago. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (&#x60;pay_in_advance&#x60; is set to true). | [optional] |
| **external_customer_id** | **String** | Unique identifier assigned to the customer in your application. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (&#x60;pay_in_advance&#x60; is set to true). | [optional] |
| **external_subscription_id** | **String** | Unique identifier assigned to the subscription in your application. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (&#x60;pay_in_advance&#x60; is set to true). | [optional] |
| **invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name. | [optional] |
| **amount_cents** | **Integer** | The cost of this specific fee, excluding any applicable taxes. |  |
| **amount_currency** | [**Currency**](Currency.md) |  |  |
| **taxes_amount_cents** | **Integer** | The cost of the tax associated with this specific fee. |  |
| **taxes_rate** | **Float** | The tax rate associated with this specific fee. |  |
| **units** | **String** | The number of units used to charge the customer. This field indicates the quantity or count of units consumed or utilized in the context of the charge. It helps in determining the basis for calculating the fee or cost associated with the usage of the service or product provided to the customer. |  |
| **precise_unit_amount** | **String** | The unit amount of the fee per unit, with precision. |  |
| **total_amount_cents** | **Integer** | The cost of this specific fee, including any applicable taxes. |  |
| **total_amount_currency** | [**Currency**](Currency.md) |  |  |
| **events_count** | **Integer** | The number of events that have been sent and used to charge the customer. This field indicates the count or quantity of events that have been processed and considered in the charging process. | [optional] |
| **pay_in_advance** | **Boolean** | Flag that indicates whether the fee was paid in advance. It serves as a boolean value, where &#x60;true&#x60; represents that the fee was paid in advance (straightaway), and &#x60;false&#x60; indicates that the fee was not paid in arrears (at the end of the period). |  |
| **invoiceable** | **Boolean** | Flag that indicates whether the fee was included on the invoice. It serves as a boolean value, where &#x60;true&#x60; represents that the fee was included on the invoice, and &#x60;false&#x60; indicates that the fee was not included on the invoice. |  |
| **from_date** | **Time** | The beginning date of the period that the fee covers. It is applicable only to &#x60;subscription&#x60; and &#x60;charge&#x60; fees. This field indicates the start date of the billing period or subscription period associated with the fee. | [optional] |
| **to_date** | **Time** | The ending date of the period that the fee covers. It is applicable only to &#x60;subscription&#x60; and &#x60;charge&#x60; fees. This field indicates the end date of the billing period or subscription period associated with the fee. | [optional] |
| **payment_status** | **String** | Indicates the payment status of the fee. It represents the current status of the payment associated with the fee. The possible values for this field are &#x60;pending&#x60;, &#x60;succeeded&#x60;, &#x60;failed&#x60; and &#x60;refunded&#x60;. |  |
| **created_at** | **Time** | The date and time when the fee was created. It is provided in Coordinated Universal Time (UTC) format. | [optional] |
| **succeeded_at** | **Time** | The date and time when the payment for the fee was successfully processed. It is provided in Coordinated Universal Time (UTC) format. | [optional] |
| **failed_at** | **Time** | The date and time when the payment for the fee failed to process. It is provided in Coordinated Universal Time (UTC) format. | [optional] |
| **refunded_at** | **Time** | The date and time when the payment for the fee was refunded. It is provided in Coordinated Universal Time (UTC) format | [optional] |
| **event_transaction_id** | **String** | Unique identifier assigned to the transaction. This field is specifically displayed when the fee type is &#x60;charge&#x60; and the payment for the fee is made in advance (&#x60;pay_in_advance&#x60; is set to &#x60;true&#x60;). | [optional] |
| **item** | [**FeeObjectItem**](FeeObjectItem.md) |  |  |
| **applied_taxes** | [**Array&lt;FeeAppliedTaxObject&gt;**](FeeAppliedTaxObject.md) | List of fee applied taxes | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteItemObjectFee.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_group_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_invoice_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_true_up_fee_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_true_up_parent_fee_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_subscription_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_customer_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  external_customer_id: external_id,
  external_subscription_id: external_id,
  invoice_display_name: Setup Fee (SF1),
  amount_cents: 100,
  amount_currency: null,
  taxes_amount_cents: 20,
  taxes_rate: 20,
  units: 0.32,
  precise_unit_amount: 312.5,
  total_amount_cents: 120,
  total_amount_currency: null,
  events_count: 23,
  pay_in_advance: true,
  invoiceable: true,
  from_date: 2022-04-29T08:59:51Z,
  to_date: 2022-05-29T08:59:51Z,
  payment_status: pending,
  created_at: 2022-08-24T14:58:59Z,
  succeeded_at: 2022-08-24T14:58:59Z,
  failed_at: 2022-08-24T14:58:59Z,
  refunded_at: 2022-08-24T14:58:59Z,
  event_transaction_id: transaction_1234567890,
  item: null,
  applied_taxes: null
)
```

