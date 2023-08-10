# OpenapiClient::InvoiceObjectCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the customer within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the customer&#39;s record within the Lago system |  |
| **sequential_id** | **Integer** | The unique identifier assigned to the customer within the organization&#39;s scope. This identifier is used to track and reference the customer&#39;s order of creation within the organization&#39;s system. It ensures that each customer has a distinct &#x60;sequential_id&#x60;&#x60; associated with them, allowing for easy identification and sorting based on the order of creation |  |
| **slug** | **String** | A concise and unique identifier for the customer, formed by combining the Organization&#39;s &#x60;name&#x60;, &#x60;id&#x60;, and customer&#39;s &#x60;sequential_id&#x60; |  |
| **external_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **address_line1** | **String** | The first line of the billing address | [optional] |
| **address_line2** | **String** | The second line of the billing address | [optional] |
| **applicable_timezone** | [**Timezone**](Timezone.md) |  |  |
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
| **tax_identification_number** | **String** | The tax identification number of the customer | [optional] |
| **timezone** | [**Timezone**](Timezone.md) |  | [optional] |
| **url** | **String** | The custom website URL of the customer | [optional] |
| **zipcode** | **String** | The zipcode of the customer&#39;s billing address | [optional] |
| **net_payment_term** | **Integer** | The net payment term, expressed in days, specifies the duration within which a customer is expected to remit payment after the invoice is finalized. | [optional] |
| **created_at** | **Time** | The date of the customer creation, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). The creation_date provides a standardized and internationally recognized timestamp for when the customer object was created |  |
| **updated_at** | **Time** | The date of the customer update, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). The update_date provides a standardized and internationally recognized timestamp for when the customer object was updated | [optional] |
| **billing_configuration** | [**CustomerBillingConfiguration**](CustomerBillingConfiguration.md) |  | [optional] |
| **metadata** | [**Array&lt;CustomerMetadata&gt;**](CustomerMetadata.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceObjectCustomer.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  sequential_id: 1,
  slug: LAG-1234-001,
  external_id: 5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba,
  address_line1: 5230 Penfield Ave,
  address_line2: null,
  applicable_timezone: null,
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
  tax_identification_number: EU123456789,
  timezone: null,
  url: http://hooli.com,
  zipcode: 91364,
  net_payment_term: 30,
  created_at: 2022-04-29T08:59:51Z,
  updated_at: 2022-04-29T08:59:51Z,
  billing_configuration: null,
  metadata: null
)
```

