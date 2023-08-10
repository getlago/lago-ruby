# OpenapiClient::WalletTransactionObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the wallet transaction within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet transaction’s record within the Lago system. |  |
| **lago_wallet_id** | **String** | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system. |  |
| **status** | **String** | The status of the wallet transaction. Possible values are &#x60;pending&#x60; or &#x60;settled&#x60;. |  |
| **transaction_type** | **String** | The type of transaction. Possible values are &#x60;inbound&#x60; (increasing the balance) or &#x60;outbound&#x60; (decreasing the balance). |  |
| **amount** | **String** | The amount of credits based on the rate and the currency. |  |
| **credit_amount** | **String** | The number of credits used in the wallet transaction. |  |
| **settled_at** | **Time** | The date when wallet transaction is settled, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). | [optional] |
| **created_at** | **Time** | The date of the wallet transaction creation, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WalletTransactionObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_wallet_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  status: settled,
  transaction_type: inbound,
  amount: 10.0,
  credit_amount: 100.0,
  settled_at: 2022-04-29T08:59:51Z,
  created_at: 2022-04-29T08:59:51Z
)
```

