# LagoAPI::AddOnObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier of the add-on, created by Lago. |  |
| **name** | **String** | The name of the add-on. |  |
| **code** | **String** | Unique code used to identify the add-on. |  |
| **amount_cents** | **Integer** | The cost of the add-on in cents, excluding any applicable taxes, that is billed to a customer. By creating a one-off invoice, you will be able to override this value. |  |
| **amount_currency** | [**Currency**](Currency.md) |  |  |
| **description** | **String** | The description of the add-on. | [optional] |
| **created_at** | **Time** | The date and time when the add-on was created. It is expressed in UTC format according to the ISO 8601 datetime standard. This field provides the timestamp for the exact moment when the add-on was initially created. |  |
| **taxes** | [**Array&lt;TaxObject&gt;**](TaxObject.md) | All taxes applied to the add-on. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::AddOnObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  name: Setup Fee,
  code: setup_fee,
  amount_cents: 50000,
  amount_currency: null,
  description: Implementation fee for new customers.,
  created_at: 2022-04-29T08:59:51Z,
  taxes: null
)
```

