# OpenapiClient::InvoiceOneOffCreateInputInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | Unique identifier assigned to the customer in your application. |  |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **fees** | [**Array&lt;InvoiceOneOffCreateInputInvoiceFeesInner&gt;**](InvoiceOneOffCreateInputInvoiceFeesInner.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceOneOffCreateInputInvoice.new(
  external_customer_id: hooli_1234,
  currency: null,
  fees: null
)
```

