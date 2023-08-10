# OpenapiClient::WalletCreateInputWallet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the wallet. | [optional] |
| **rate_amount** | **String** | The rate of conversion between credits and the amount in the specified currency. It indicates the ratio or factor used to convert credits into the corresponding monetary value in the currency of the transaction. |  |
| **currency** | [**Currency**](Currency.md) |  |  |
| **paid_credits** | **String** | The number of paid credits. Required only if there is no granted credits. | [optional] |
| **granted_credits** | **String** | The number of free granted credits. Required only if there is no paid credits. | [optional] |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **expiration_at** | **Time** | The date and time that determines when the wallet will expire. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WalletCreateInputWallet.new(
  name: Prepaid,
  rate_amount: 1.5,
  currency: null,
  paid_credits: 20.0,
  granted_credits: 10.0,
  external_customer_id: hooli_1234,
  expiration_at: 2022-07-07T23:59:59Z
)
```

