# LagoAPI::WalletUpdateInputWallet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the wallet. | [optional] |
| **expiration_at** | **Time** | The date and time that determines when the wallet will expire. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC). | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::WalletUpdateInputWallet.new(
  name: new_name,
  expiration_at: 2022-07-07T23:59:59Z
)
```

