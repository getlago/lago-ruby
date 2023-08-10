# OpenapiClient::InvoiceUpdateInputInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_status** | **String** | The payment status of the invoice. Possible values are &#x60;pending&#x60;, &#x60;failed&#x60; or &#x60;succeeded&#x60;. | [optional] |
| **metadata** | [**Array&lt;InvoiceUpdateInputInvoiceMetadataInner&gt;**](InvoiceUpdateInputInvoiceMetadataInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceUpdateInputInvoice.new(
  payment_status: succeeded,
  metadata: null
)
```

