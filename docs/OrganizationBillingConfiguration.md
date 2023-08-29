# LagoAPI::OrganizationBillingConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_footer** | **String** | The customer invoice message that appears at the bottom of each billing documents. | [optional] |
| **invoice_grace_period** | **Integer** | The grace period, expressed in days, for finalizing the invoice. This period refers to the additional time granted to your customers beyond the invoice due date to adjust usage and line items. Can be overwritten by the customer’s grace period. | [optional] |
| **document_locale** | **String** | The locale of the billing documents, expressed in the ISO 639-1 format. This field indicates the language or regional variant used for the documents content issued or the embeddable customer portal. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::OrganizationBillingConfiguration.new(
  invoice_footer: This is my customer footer,
  invoice_grace_period: 3,
  document_locale: en
)
```

