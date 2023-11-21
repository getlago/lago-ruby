# LagoAPI::GenerateCustomerCheckoutURL200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_customer_id** | **String** | Unique identifier assigned to the customer within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the customer&#39;s record within the Lago system | [optional] |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) | [optional] |
| **payment_provider** | **String** | The Payment Provider name linked to the Customer. | [optional] |
| **checkout_url** | **String** | The new generated Payment Provider Checkout URL for the Customer. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::GenerateCustomerCheckoutURL200Response.new(
  lago_customer_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  external_customer_id: 5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba,
  payment_provider: stripe,
  checkout_url: https://foo.bar
)
```

