# OpenapiClient::AppliedAddOnObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier of the applied add-on created by Lago. |  |
| **lago_add_on_id** | **String** | Unique identifier of the add-on created by Lago. |  |
| **add_on_code** | **String** | Unique code used to identify the add-on. |  |
| **lago_customer_id** | **String** | Unique identifier of the customer created by Lago. |  |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **amount_cents** | **Integer** | The cost of the add-on in cents, excluding any applicable taxes, that is billed to a customer. By creating a one-off invoice, you will be able to override this value. |  |
| **amount_currency** | [**Currency**](Currency.md) |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AppliedAddOnObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_add_on_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  add_on_code: setup_fee,
  lago_customer_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  external_customer_id: 5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba,
  amount_cents: 50000,
  amount_currency: null,
  created_at: 2022-09-14T16:35:31Z
)
```

