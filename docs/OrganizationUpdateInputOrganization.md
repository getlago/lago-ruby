# OpenapiClient::OrganizationUpdateInputOrganization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_url** | **String** | The URL of your newest updated webhook endpoint. This URL allows your organization to receive important messages, notifications, or data from the Lago system. By configuring your webhook endpoint to this URL, you can ensure that your organization stays informed and receives relevant information in a timely manner. | [optional] |
| **country** | [**Country**](Country.md) |  | [optional] |
| **address_line1** | **String** | The first line of your organization’s billing address. | [optional] |
| **address_line2** | **String** | The second line of your organization’s billing address. | [optional] |
| **state** | **String** | The state of your organization’s billing address. | [optional] |
| **zipcode** | **String** | The zipcode of your organization’s billing address. | [optional] |
| **email** | **String** | The email address of your organization used to bill your customers. | [optional] |
| **city** | **String** | The city of your organization’s billing address. | [optional] |
| **legal_name** | **String** | The legal name of your organization. | [optional] |
| **legal_number** | **String** | The legal number of your organization. | [optional] |
| **net_payment_term** | **Integer** | The net payment term, expressed in days, specifies the duration within which a customer is expected to remit payment after the invoice is finalized. | [optional] |
| **tax_identification_number** | **String** | The tax identification number of your organization. | [optional] |
| **timezone** | [**Timezone**](Timezone.md) |  | [optional] |
| **email_settings** | **Array&lt;String&gt;** | Represents the email settings of the organization. It allows you to define which documents are sent by email. The field value determines the types of documents that trigger email notifications. Possible values for are &#x60;invoice.finalized&#x60; and &#x60;credit_note.created&#x60;. By configuring this field, you can specify whether invoices, credit notes, or both should be sent to recipients via email. | [optional] |
| **billing_configuration** | [**OrganizationBillingConfiguration**](OrganizationBillingConfiguration.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrganizationUpdateInputOrganization.new(
  webhook_url: https://webhook.brex.com,
  country: null,
  address_line1: 100 Brex Street,
  address_line2: null,
  state: NYC,
  zipcode: 10000,
  email: brex@brex.com,
  city: New York,
  legal_name: null,
  legal_number: null,
  net_payment_term: 30,
  tax_identification_number: US123456789,
  timezone: null,
  email_settings: [&quot;invoice.finalized&quot;,&quot;credit_note.created&quot;],
  billing_configuration: null
)
```

