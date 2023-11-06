# LagoAPI::FeeObjectItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The fee type. Possible values are &#x60;add-on&#x60;, &#x60;charge&#x60;, &#x60;credit&#x60; or &#x60;subscription&#x60;. |  |
| **code** | **String** | The code of the fee item. It can be the code of the &#x60;add-o&#x60;n, the code of the &#x60;charge&#x60;, the code of the &#x60;credit&#x60; or the code of the &#x60;subscription&#x60;. |  |
| **name** | **String** | The name of the fee item. It can be the name of the &#x60;add-on&#x60;, the name of the &#x60;charge&#x60;, the name of the &#x60;credit&#x60; or the name of the &#x60;subscription&#x60;. |  |
| **invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name. | [optional] |
| **group_invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name. | [optional] |
| **lago_item_id** | **String** | Unique identifier of the fee item, created by Lago. It can be the identifier of the &#x60;add-on&#x60;, the identifier of the &#x60;charge&#x60;, the identifier of the &#x60;credit&#x60; or the identifier of the &#x60;subscription&#x60;. |  |
| **item_type** | **String** | The type of the fee item. Possible values are &#x60;AddOn&#x60;, &#x60;BillableMetric&#x60;, &#x60;WalletTransaction&#x60; or &#x60;Subscription&#x60;. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::FeeObjectItem.new(
  type: subscription,
  code: startup,
  name: Startup,
  invoice_display_name: Setup Fee (SF1),
  group_invoice_display_name: Transactions - ACH,
  lago_item_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  item_type: Subscription
)
```

