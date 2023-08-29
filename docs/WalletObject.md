# LagoAPI::WalletObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system. |  |
| **lago_customer_id** | **String** | Unique identifier assigned to the customer within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the customer’s record within the Lago system. |  |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **status** | **String** | The status of the wallet. Possible values are &#x60;active&#x60; or &#x60;terminated&#x60;. |  |
| **currency** | [**Currency**](Currency.md) |  |  |
| **name** | **String** | The name of the wallet. | [optional] |
| **rate_amount** | **String** | The rate of conversion between credits and the amount in the specified currency. It indicates the ratio or factor used to convert credits into the corresponding monetary value in the currency of the transaction. |  |
| **credits_balance** | **String** | The current wallet balance expressed in credits. |  |
| **balance_cents** | **Integer** | The current wallet balance expressed in cents. |  |
| **consumed_credits** | **String** | The number of consumed credits. |  |
| **created_at** | **Time** | The date of the wallet creation, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). |  |
| **expiration_at** | **Time** | The date and time that determines when the wallet will expire. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC). | [optional] |
| **last_balance_sync_at** | **Time** | The date and time of the last balance top-up. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC). | [optional] |
| **last_consumed_credit_at** | **Time** | The date and time of the last credits consumption. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC). | [optional] |
| **terminated_at** | **Time** | The date of terminaison of the wallet. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC). | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::WalletObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_customer_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  external_customer_id: hooli_1234,
  status: active,
  currency: null,
  name: Prepaid,
  rate_amount: 1.5,
  credits_balance: 28.0,
  balance_cents: 1000,
  consumed_credits: 2.0,
  created_at: 2022-04-29T08:59:51Z,
  expiration_at: null,
  last_balance_sync_at: 2022-04-29T08:59:51Z,
  last_consumed_credit_at: 2022-04-29T08:59:51Z,
  terminated_at: 2022-09-14T16:35:31Z
)
```

