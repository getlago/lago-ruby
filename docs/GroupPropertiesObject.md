# LagoAPI::GroupPropertiesObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Unique identifier of a billable metric group, created by Lago. |  |
| **invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual group will be used as the default display name. | [optional] |
| **values** | [**GroupPropertiesObjectValues**](GroupPropertiesObjectValues.md) |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::GroupPropertiesObject.new(
  group_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  invoice_display_name: AWS,
  values: null
)
```

