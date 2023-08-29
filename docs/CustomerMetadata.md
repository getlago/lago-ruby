# LagoAPI::CustomerMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | A unique identifier for the customer metadata object in the Lago application. Can be used to update a key-value pair |  |
| **key** | **String** | The metadata object key |  |
| **value** | **String** | The metadata object value |  |
| **display_in_invoice** | **Boolean** | Determines whether the item or information should be displayed in the invoice. If set to true, the item or information will be included and visible in the generated invoice. If set to false, the item or information will be excluded and not displayed in the invoice. |  |
| **created_at** | **Time** | The date of the metadata object creation, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). The creation_date provides a standardized and internationally recognized timestamp for when the metadata object was created |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CustomerMetadata.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  key: Purchase Order,
  value: 123456789,
  display_in_invoice: true,
  created_at: 2022-04-29T08:59:51Z
)
```

