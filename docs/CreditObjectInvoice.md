# LagoAPI::CreditObjectInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** |  |  |
| **payment_status** | **String** |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditObjectInvoice.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  payment_status: succeeded
)
```

