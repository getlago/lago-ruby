# LagoAPI::AppliedAddOnInputAppliedAddOn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **add_on_code** | **String** | Unique code used to identify the add-on. |  |
| **amount_cents** | **Integer** | The cost of the add-on in cents, excluding any applicable taxes, that is billed to a customer. By creating a one-off invoice, you will be able to override this value. | [optional] |
| **amount_currency** | [**Currency**](Currency.md) |  | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::AppliedAddOnInputAppliedAddOn.new(
  external_customer_id: 5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba,
  add_on_code: setup_fee,
  amount_cents: 50000,
  amount_currency: null
)
```

