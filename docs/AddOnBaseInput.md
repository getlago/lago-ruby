# OpenapiClient::AddOnBaseInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the add-on. | [optional] |
| **code** | **String** | Unique code used to identify the add-on. | [optional] |
| **amount_cents** | **Integer** | The cost of the add-on in cents, excluding any applicable taxes, that is billed to a customer. By creating a one-off invoice, you will be able to override this value. | [optional] |
| **amount_currency** | [**Currency**](Currency.md) |  | [optional] |
| **description** | **String** | The description of the add-on. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddOnBaseInput.new(
  name: Setup Fee,
  code: setup_fee,
  amount_cents: 50000,
  amount_currency: null,
  description: Implementation fee for new customers.
)
```

