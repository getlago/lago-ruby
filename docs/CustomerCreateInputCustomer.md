# OpenapiClient::CustomerCreateInputCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **address_line1** | **String** | The first line of the billing address | [optional] |
| **address_line2** | **String** | The second line of the billing address | [optional] |
| **city** | **String** | The city of the customer&#39;s billing address | [optional] |
| **country** | [**Country**](Country.md) |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **email** | **String** | The email of the customer | [optional] |
| **legal_name** | **String** | The legal company name of the customer | [optional] |
| **legal_number** | **String** | The legal company number of the customer | [optional] |
| **logo_url** | **String** | The logo URL of the customer | [optional] |
| **name** | **String** | The full name of the customer | [optional] |
| **phone** | **String** | The phone number of the customer | [optional] |
| **state** | **String** | The state of the customer&#39;s billing address | [optional] |
| **tax_codes** | **Array&lt;String&gt;** | List of unique code used to identify the taxes. | [optional] |
| **tax_identification_number** | **String** | The tax identification number of the customer | [optional] |
| **timezone** | [**Timezone**](Timezone.md) |  | [optional] |
| **url** | **String** | The custom website URL of the customer | [optional] |
| **zipcode** | **String** | The zipcode of the customer&#39;s billing address | [optional] |
| **net_payment_term** | **Integer** | The net payment term, expressed in days, specifies the duration within which a customer is expected to remit payment after the invoice is finalized. | [optional] |
| **billing_configuration** | [**CustomerBillingConfiguration**](CustomerBillingConfiguration.md) |  | [optional] |
| **metadata** | [**Array&lt;CustomerCreateInputCustomerMetadataInner&gt;**](CustomerCreateInputCustomerMetadataInner.md) | Set of key-value pairs that you can attach to a customer. This can be useful for storing additional information about the customer in a structured format | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomerCreateInputCustomer.new(
  external_id: 5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba,
  address_line1: 5230 Penfield Ave,
  address_line2: ,
  city: Woodland Hills,
  country: null,
  currency: null,
  email: dinesh@piedpiper.test,
  legal_name: Coleman-Blair,
  legal_number: 49-008-2965,
  logo_url: http://hooli.com/logo.png,
  name: Gavin Belson,
  phone: 1-171-883-3711 x245,
  state: CA,
  tax_codes: [&quot;french_standard_vat&quot;],
  tax_identification_number: EU123456789,
  timezone: null,
  url: http://hooli.com,
  zipcode: 91364,
  net_payment_term: 30,
  billing_configuration: null,
  metadata: null
)
```

