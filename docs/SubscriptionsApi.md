# OpenapiClient::SubscriptionsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Assign a plan to a customer |
| [**destroy_subscription**](SubscriptionsApi.md#destroy_subscription) | **DELETE** /subscriptions/{external_id} | Terminate a subscription |
| [**find_all_subscriptions**](SubscriptionsApi.md#find_all_subscriptions) | **GET** /subscriptions | List all subscriptions |
| [**update_subscription**](SubscriptionsApi.md#update_subscription) | **PUT** /subscriptions/{external_id} | Update a subscription |


## create_subscription

> <Subscription> create_subscription(subscription_create_input)

Assign a plan to a customer

This endpoint assigns a plan to a customer, creating or modifying a subscription. Ideal for initial subscriptions or plan changes (upgrades/downgrades).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::SubscriptionsApi.new
subscription_create_input = OpenapiClient::SubscriptionCreateInput.new({subscription: OpenapiClient::SubscriptionCreateInputSubscription.new({external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba', plan_code: 'premium', external_id: 'my_sub_1234567890'})}) # SubscriptionCreateInput | Subscription payload

begin
  # Assign a plan to a customer
  result = api_instance.create_subscription(subscription_create_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscription>, Integer, Hash)> create_subscription_with_http_info(subscription_create_input)

```ruby
begin
  # Assign a plan to a customer
  data, status_code, headers = api_instance.create_subscription_with_http_info(subscription_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscription>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_create_input** | [**SubscriptionCreateInput**](SubscriptionCreateInput.md) | Subscription payload |  |

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_subscription

> <Subscription> destroy_subscription(external_id, opts)

Terminate a subscription

This endpoint allows you to terminate a subscription.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::SubscriptionsApi.new
external_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | External ID of the existing subscription
opts = {
  status: 'pending' # String | If the field is not defined, Lago will terminate only `active` subscriptions. However, if you wish to cancel a `pending` subscription, please ensure that you include `status=pending` in your request.
}

begin
  # Terminate a subscription
  result = api_instance.destroy_subscription(external_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->destroy_subscription: #{e}"
end
```

#### Using the destroy_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscription>, Integer, Hash)> destroy_subscription_with_http_info(external_id, opts)

```ruby
begin
  # Terminate a subscription
  data, status_code, headers = api_instance.destroy_subscription_with_http_info(external_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscription>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->destroy_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | External ID of the existing subscription |  |
| **status** | **String** | If the field is not defined, Lago will terminate only &#x60;active&#x60; subscriptions. However, if you wish to cancel a &#x60;pending&#x60; subscription, please ensure that you include &#x60;status&#x3D;pending&#x60; in your request. | [optional] |

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_subscriptions

> <SubscriptionsPaginated> find_all_subscriptions(opts)

List all subscriptions

This endpoint retrieves all active subscriptions.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::SubscriptionsApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20, # Integer | Number of records per page.
  external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba', # String | The customer external unique identifier (provided by your own application)
  plan_code: 'premium', # String | The unique code representing the plan to be attached to the customer. This code must correspond to the code property of one of the active plans.
  status: ['pending'] # Array<String> | If the field is not defined, Lago will return only `active` subscriptions. However, if you wish to fetch subscriptions by different status you can define them in a status[] query param. Available filter values: `pending`, `canceled`, `terminated`, `active`.
}

begin
  # List all subscriptions
  result = api_instance.find_all_subscriptions(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->find_all_subscriptions: #{e}"
end
```

#### Using the find_all_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsPaginated>, Integer, Hash)> find_all_subscriptions_with_http_info(opts)

```ruby
begin
  # List all subscriptions
  data, status_code, headers = api_instance.find_all_subscriptions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsPaginated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->find_all_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) | [optional] |
| **plan_code** | **String** | The unique code representing the plan to be attached to the customer. This code must correspond to the code property of one of the active plans. | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | If the field is not defined, Lago will return only &#x60;active&#x60; subscriptions. However, if you wish to fetch subscriptions by different status you can define them in a status[] query param. Available filter values: &#x60;pending&#x60;, &#x60;canceled&#x60;, &#x60;terminated&#x60;, &#x60;active&#x60;. | [optional] |

### Return type

[**SubscriptionsPaginated**](SubscriptionsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_subscription

> <Subscription> update_subscription(external_id, subscription_update_input)

Update a subscription

This endpoint allows you to update a subscription.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::SubscriptionsApi.new
external_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | External ID of the existing subscription
subscription_update_input = OpenapiClient::SubscriptionUpdateInput.new({subscription: OpenapiClient::SubscriptionUpdateInputSubscription.new}) # SubscriptionUpdateInput | Update an existing subscription

begin
  # Update a subscription
  result = api_instance.update_subscription(external_id, subscription_update_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription: #{e}"
end
```

#### Using the update_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscription>, Integer, Hash)> update_subscription_with_http_info(external_id, subscription_update_input)

```ruby
begin
  # Update a subscription
  data, status_code, headers = api_instance.update_subscription_with_http_info(external_id, subscription_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscription>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | External ID of the existing subscription |  |
| **subscription_update_input** | [**SubscriptionUpdateInput**](SubscriptionUpdateInput.md) | Update an existing subscription |  |

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

