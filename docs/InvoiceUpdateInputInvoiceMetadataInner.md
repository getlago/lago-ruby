# LagoAPI::InvoiceUpdateInputInvoiceMetadataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The metadata object identifier. Only required when updating existing metadata. | [optional] |
| **key** | **String** | The key in the key-value pair of the metadata. | [optional] |
| **value** | **String** | The value in the key-value pair of the metadata. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::InvoiceUpdateInputInvoiceMetadataInner.new(
  id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  key: digital_ref_id,
  value: INV-0123456-98765
)
```

