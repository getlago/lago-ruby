# LagoAPI::WalletTransactionsPaginated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_transactions** | [**Array&lt;WalletTransactionObject&gt;**](WalletTransactionObject.md) |  |  |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::WalletTransactionsPaginated.new(
  wallet_transactions: null,
  meta: null
)
```

