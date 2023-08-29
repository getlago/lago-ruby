# LagoAPI::CustomerCreateInputCustomerMetadataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier for the metadata object, only required when updating a key-value pair | [optional] |
| **key** | **String** | The metadata object key |  |
| **value** | **String** | The metadata object value |  |
| **display_in_invoice** | **Boolean** | Determines whether the item or information should be displayed in the invoice. If set to true, the item or information will be included and visible in the generated invoice. If set to false, the item or information will be excluded and not displayed in the invoice. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CustomerCreateInputCustomerMetadataInner.new(
  id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  key: Purchase Order,
  value: 123456789,
  display_in_invoice: true
)
```

