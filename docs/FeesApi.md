# LagoAPI::FeesApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_all_fees**](FeesApi.md#find_all_fees) | **GET** /fees | List all fees |
| [**find_fee**](FeesApi.md#find_fee) | **GET** /fees/{lago_id} | Retrieve a specific fee |
| [**update_fee**](FeesApi.md#update_fee) | **PUT** /fees/{lago_id} | Update a fee |


## find_all_fees

> <FeesPaginated> find_all_fees(opts)

List all fees

This endpoint is used for retrieving all fees that has been issued.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::FeesApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20, # Integer | Number of records per page.
  external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba', # String | Unique identifier assigned to the customer in your application.
  external_subscription_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba', # String | External subscription ID
  currency: LagoAPI::Currency::AED, # Currency | Filter results by fee’s currency.
  fee_type: 'charge', # String | The fee type. Possible values are `add-on`, `charge`, `credit` or `subscription`.
  billable_metric_code: 'bm_code', # String | Filter results by the `code` of the billable metric attached to the fee. Only applies to `charge` types.
  payment_status: 'pending', # String | Indicates the payment status of the fee. It represents the current status of the payment associated with the fee. The possible values for this field are `pending`, `succeeded`, `failed` and refunded`.
  created_at_from: Time.parse('2023-03-28T12:21:51Z'), # Time | Filter results created after creation date and time in UTC.
  created_at_to: Time.parse('2023-03-28T12:21:51Z'), # Time | Filter results created before creation date and time in UTC.
  succeeded_at_from: Time.parse('2023-03-28T12:21:51Z'), # Time | Filter results with payment success after creation date and time in UTC.
  succeeded_at_to: Time.parse('2023-03-28T12:21:51Z'), # Time | Filter results with payment success after creation date and time in UTC.
  failed_at_from: Time.parse('2023-03-28T12:21:51Z'), # Time | Filter results with payment failure after creation date and time in UTC.
  failed_at_to: Time.parse('2023-03-28T12:21:51Z'), # Time | Filter results with payment failure after creation date and time in UTC.
  refunded_at_from: Time.parse('2023-03-28T12:21:51Z'), # Time | Filter results with payment refund after creation date and time in UTC.
  refunded_at_to: Time.parse('2023-03-28T12:21:51Z') # Time | Filter results with payment refund after creation date and time in UTC.
}

begin
  # List all fees
  result = api_instance.find_all_fees(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling FeesApi->find_all_fees: #{e}"
end
```

#### Using the find_all_fees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeesPaginated>, Integer, Hash)> find_all_fees_with_http_info(opts)

```ruby
begin
  # List all fees
  data, status_code, headers = api_instance.find_all_fees_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeesPaginated>
rescue LagoAPI::ApiError => e
  puts "Error when calling FeesApi->find_all_fees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |
| **external_customer_id** | **String** | Unique identifier assigned to the customer in your application. | [optional] |
| **external_subscription_id** | **String** | External subscription ID | [optional] |
| **currency** | [**Currency**](.md) | Filter results by fee’s currency. | [optional] |
| **fee_type** | **String** | The fee type. Possible values are &#x60;add-on&#x60;, &#x60;charge&#x60;, &#x60;credit&#x60; or &#x60;subscription&#x60;. | [optional] |
| **billable_metric_code** | **String** | Filter results by the &#x60;code&#x60; of the billable metric attached to the fee. Only applies to &#x60;charge&#x60; types. | [optional] |
| **payment_status** | **String** | Indicates the payment status of the fee. It represents the current status of the payment associated with the fee. The possible values for this field are &#x60;pending&#x60;, &#x60;succeeded&#x60;, &#x60;failed&#x60; and refunded&#x60;. | [optional] |
| **created_at_from** | **Time** | Filter results created after creation date and time in UTC. | [optional] |
| **created_at_to** | **Time** | Filter results created before creation date and time in UTC. | [optional] |
| **succeeded_at_from** | **Time** | Filter results with payment success after creation date and time in UTC. | [optional] |
| **succeeded_at_to** | **Time** | Filter results with payment success after creation date and time in UTC. | [optional] |
| **failed_at_from** | **Time** | Filter results with payment failure after creation date and time in UTC. | [optional] |
| **failed_at_to** | **Time** | Filter results with payment failure after creation date and time in UTC. | [optional] |
| **refunded_at_from** | **Time** | Filter results with payment refund after creation date and time in UTC. | [optional] |
| **refunded_at_to** | **Time** | Filter results with payment refund after creation date and time in UTC. | [optional] |

### Return type

[**FeesPaginated**](FeesPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_fee

> <Fee> find_fee(lago_id)

Retrieve a specific fee

This endpoint is used for retrieving a specific fee that has been issued.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::FeesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system.

begin
  # Retrieve a specific fee
  result = api_instance.find_fee(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling FeesApi->find_fee: #{e}"
end
```

#### Using the find_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Fee>, Integer, Hash)> find_fee_with_http_info(lago_id)

```ruby
begin
  # Retrieve a specific fee
  data, status_code, headers = api_instance.find_fee_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Fee>
rescue LagoAPI::ApiError => e
  puts "Error when calling FeesApi->find_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system. |  |

### Return type

[**Fee**](Fee.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_fee

> <Fee> update_fee(lago_id, opts)

Update a fee

This endpoint is used for updating a specific fee that has been issued.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::FeesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system.
opts = {
  fee_update_input: LagoAPI::FeeUpdateInput.new({fee: LagoAPI::FeeUpdateInputFee.new({payment_status: 'pending'})}) # FeeUpdateInput | Fee payload
}

begin
  # Update a fee
  result = api_instance.update_fee(lago_id, opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling FeesApi->update_fee: #{e}"
end
```

#### Using the update_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Fee>, Integer, Hash)> update_fee_with_http_info(lago_id, opts)

```ruby
begin
  # Update a fee
  data, status_code, headers = api_instance.update_fee_with_http_info(lago_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Fee>
rescue LagoAPI::ApiError => e
  puts "Error when calling FeesApi->update_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system. |  |
| **fee_update_input** | [**FeeUpdateInput**](FeeUpdateInput.md) | Fee payload | [optional] |

### Return type

[**Fee**](Fee.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

