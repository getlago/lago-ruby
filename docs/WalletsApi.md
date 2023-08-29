# LagoAPI::WalletsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_wallet**](WalletsApi.md#create_wallet) | **POST** /wallets | Create a wallet |
| [**create_wallet_transaction**](WalletsApi.md#create_wallet_transaction) | **POST** /wallet_transactions | Top up a wallet |
| [**destroy_wallet**](WalletsApi.md#destroy_wallet) | **DELETE** /wallets/{lago_id} | Terminate a wallet |
| [**find_all_wallet_transactions**](WalletsApi.md#find_all_wallet_transactions) | **GET** /wallets/{lago_id}/wallet_transactions | List all wallet transactions |
| [**find_all_wallets**](WalletsApi.md#find_all_wallets) | **GET** /wallets | List all wallets |
| [**find_wallet**](WalletsApi.md#find_wallet) | **GET** /wallets/{lago_id} | Retrieve a wallet |
| [**update_wallet**](WalletsApi.md#update_wallet) | **PUT** /wallets/{lago_id} | Update a wallet |


## create_wallet

> <Wallet> create_wallet(wallet_create_input)

Create a wallet

This endpoint is used to create a wallet with prepaid credits.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WalletsApi.new
wallet_create_input = LagoAPI::WalletCreateInput.new # WalletCreateInput | Wallet payload

begin
  # Create a wallet
  result = api_instance.create_wallet(wallet_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->create_wallet: #{e}"
end
```

#### Using the create_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Wallet>, Integer, Hash)> create_wallet_with_http_info(wallet_create_input)

```ruby
begin
  # Create a wallet
  data, status_code, headers = api_instance.create_wallet_with_http_info(wallet_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Wallet>
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->create_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_create_input** | [**WalletCreateInput**](WalletCreateInput.md) | Wallet payload |  |

### Return type

[**Wallet**](Wallet.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_wallet_transaction

> <WalletTransactions> create_wallet_transaction(wallet_transaction_create_input)

Top up a wallet

This endpoint is used to top-up an active wallet.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WalletsApi.new
wallet_transaction_create_input = LagoAPI::WalletTransactionCreateInput.new({wallet_transaction: LagoAPI::WalletTransactionCreateInputWalletTransaction.new({wallet_id: '1a901a90-1a90-1a90-1a90-1a901a901a90'})}) # WalletTransactionCreateInput | Wallet transaction payload

begin
  # Top up a wallet
  result = api_instance.create_wallet_transaction(wallet_transaction_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->create_wallet_transaction: #{e}"
end
```

#### Using the create_wallet_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletTransactions>, Integer, Hash)> create_wallet_transaction_with_http_info(wallet_transaction_create_input)

```ruby
begin
  # Top up a wallet
  data, status_code, headers = api_instance.create_wallet_transaction_with_http_info(wallet_transaction_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletTransactions>
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->create_wallet_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_transaction_create_input** | [**WalletTransactionCreateInput**](WalletTransactionCreateInput.md) | Wallet transaction payload |  |

### Return type

[**WalletTransactions**](WalletTransactions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_wallet

> <Wallet> destroy_wallet(lago_id)

Terminate a wallet

This endpoint is used to terminate an existing wallet with prepaid credits.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WalletsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.

begin
  # Terminate a wallet
  result = api_instance.destroy_wallet(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->destroy_wallet: #{e}"
end
```

#### Using the destroy_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Wallet>, Integer, Hash)> destroy_wallet_with_http_info(lago_id)

```ruby
begin
  # Terminate a wallet
  data, status_code, headers = api_instance.destroy_wallet_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Wallet>
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->destroy_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system. |  |

### Return type

[**Wallet**](Wallet.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_wallet_transactions

> <WalletTransactionsPaginated> find_all_wallet_transactions(lago_id, opts)

List all wallet transactions

This endpoint is used to list all wallet transactions.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WalletsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
opts = {
  page: 1, # Integer | Page number.
  per_page: 20, # Integer | Number of records per page.
  status: 'pending', # String | The status of the wallet transaction. Possible values are `pending` or `settled`.
  transaction_type: 'inbound' # String | The transaction type of the wallet transaction. Possible values are `inbound` (increasing the wallet balance) or `outbound` (decreasing the wallet balance).
}

begin
  # List all wallet transactions
  result = api_instance.find_all_wallet_transactions(lago_id, opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->find_all_wallet_transactions: #{e}"
end
```

#### Using the find_all_wallet_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletTransactionsPaginated>, Integer, Hash)> find_all_wallet_transactions_with_http_info(lago_id, opts)

```ruby
begin
  # List all wallet transactions
  data, status_code, headers = api_instance.find_all_wallet_transactions_with_http_info(lago_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletTransactionsPaginated>
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->find_all_wallet_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system. |  |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |
| **status** | **String** | The status of the wallet transaction. Possible values are &#x60;pending&#x60; or &#x60;settled&#x60;. | [optional] |
| **transaction_type** | **String** | The transaction type of the wallet transaction. Possible values are &#x60;inbound&#x60; (increasing the wallet balance) or &#x60;outbound&#x60; (decreasing the wallet balance). | [optional] |

### Return type

[**WalletTransactionsPaginated**](WalletTransactionsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_wallets

> <WalletsPaginated> find_all_wallets(external_customer_id, opts)

List all wallets

This endpoint is used to list all wallets with prepaid credits.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WalletsApi.new
external_customer_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | The customer external unique identifier (provided by your own application).
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all wallets
  result = api_instance.find_all_wallets(external_customer_id, opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->find_all_wallets: #{e}"
end
```

#### Using the find_all_wallets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletsPaginated>, Integer, Hash)> find_all_wallets_with_http_info(external_customer_id, opts)

```ruby
begin
  # List all wallets
  data, status_code, headers = api_instance.find_all_wallets_with_http_info(external_customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletsPaginated>
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->find_all_wallets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application). |  |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**WalletsPaginated**](WalletsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_wallet

> <Wallet> find_wallet(lago_id)

Retrieve a wallet

This endpoint is used to retrieve an existing wallet with prepaid credits.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WalletsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.

begin
  # Retrieve a wallet
  result = api_instance.find_wallet(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->find_wallet: #{e}"
end
```

#### Using the find_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Wallet>, Integer, Hash)> find_wallet_with_http_info(lago_id)

```ruby
begin
  # Retrieve a wallet
  data, status_code, headers = api_instance.find_wallet_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Wallet>
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->find_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system. |  |

### Return type

[**Wallet**](Wallet.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wallet

> <Wallet> update_wallet(lago_id, wallet_update_input)

Update a wallet

This endpoint is used to update an existing wallet with prepaid credits.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WalletsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
wallet_update_input = LagoAPI::WalletUpdateInput.new({wallet: LagoAPI::WalletUpdateInputWallet.new}) # WalletUpdateInput | Wallet update payload

begin
  # Update a wallet
  result = api_instance.update_wallet(lago_id, wallet_update_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->update_wallet: #{e}"
end
```

#### Using the update_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Wallet>, Integer, Hash)> update_wallet_with_http_info(lago_id, wallet_update_input)

```ruby
begin
  # Update a wallet
  data, status_code, headers = api_instance.update_wallet_with_http_info(lago_id, wallet_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Wallet>
rescue LagoAPI::ApiError => e
  puts "Error when calling WalletsApi->update_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system. |  |
| **wallet_update_input** | [**WalletUpdateInput**](WalletUpdateInput.md) | Wallet update payload |  |

### Return type

[**Wallet**](Wallet.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

