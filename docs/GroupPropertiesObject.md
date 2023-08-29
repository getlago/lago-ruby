# LagoAPI::GroupPropertiesObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Unique identifier of a billable metric group, created by Lago. |  |
| **values** | [**GroupPropertiesObjectValues**](GroupPropertiesObjectValues.md) |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::GroupPropertiesObject.new(
  group_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  values: null
)
```

