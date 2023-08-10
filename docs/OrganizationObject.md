# OpenapiClient::OrganizationObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the organization within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the organization&#39;s record within the Lago system |  |
| **name** | **String** | The name of your organization. |  |
| **created_at** | **Time** | The date of creation of your organization, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). |  |
| **webhook_url** | **String** | The URL of your newest updated webhook endpoint. This URL allows your organization to receive important messages, notifications, or data from the Lago system. By configuring your webhook endpoint to this URL, you can ensure that your organization stays informed and receives relevant information in a timely manner. | [optional] |
| **webhook_urls** | **Array&lt;String&gt;** | The array containing your webhooks URLs. | [optional] |
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
| **billing_configuration** | [**OrganizationBillingConfiguration**](OrganizationBillingConfiguration.md) |  |  |
| **taxes** | [**Array&lt;TaxObject&gt;**](TaxObject.md) | List of default organization taxes | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrganizationObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  name: Name1,
  created_at: 2022-05-02T13:04:09Z,
  webhook_url: https://webhook.brex.com,
  webhook_urls: [&quot;https://webhook.brex.com&quot;,&quot;https://webhook2.brex.com&quot;],
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
  billing_configuration: null,
  taxes: null
)
```

