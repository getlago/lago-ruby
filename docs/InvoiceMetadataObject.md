# LagoAPI::InvoiceMetadataObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the invoice metadata within the Lago application. | [optional] |
| **key** | **String** | Represents the key of the metadata’s key-value pair. | [optional] |
| **value** | **String** | Represents the value of the metadata’s key-value pair. | [optional] |
| **created_at** | **Time** | The date and time when the metadata object was created. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC). | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::InvoiceMetadataObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  key: digital_ref_id,
  value: INV-0123456-98765,
  created_at: 2022-04-29T08:59:51Z
)
```

