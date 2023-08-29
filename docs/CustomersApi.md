# LagoAPI::CustomersApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a customer |
| [**delete_applied_coupon**](CustomersApi.md#delete_applied_coupon) | **DELETE** /customers/{external_customer_id}/applied_coupons/{applied_coupon_id} | Delete an applied coupon |
| [**destroy_customer**](CustomersApi.md#destroy_customer) | **DELETE** /customers/{external_id} | Delete a customer |
| [**find_all_customers**](CustomersApi.md#find_all_customers) | **GET** /customers | List all customers |
| [**find_customer**](CustomersApi.md#find_customer) | **GET** /customers/{external_id} | Retrieve a customer |
| [**find_customer_current_usage**](CustomersApi.md#find_customer_current_usage) | **GET** /customers/{external_customer_id}/current_usage | Retrieve customer current usage |
| [**get_customer_portal_url**](CustomersApi.md#get_customer_portal_url) | **GET** /customers/{external_customer_id}/portal_url | Get a customer portal URL |


## create_customer

> <Customer> create_customer(customer_create_input)

Create a customer

This endpoint creates a new customer.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CustomersApi.new
customer_create_input = LagoAPI::CustomerCreateInput.new({customer: LagoAPI::CustomerCreateInputCustomer.new({external_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba'})}) # CustomerCreateInput | Customer payload

begin
  # Create a customer
  result = api_instance.create_customer(customer_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> create_customer_with_http_info(customer_create_input)

```ruby
begin
  # Create a customer
  data, status_code, headers = api_instance.create_customer_with_http_info(customer_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_create_input** | [**CustomerCreateInput**](CustomerCreateInput.md) | Customer payload |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_applied_coupon

> <AppliedCoupon> delete_applied_coupon(external_customer_id, applied_coupon_id)

Delete an applied coupon

This endpoint is used to delete a specific coupon that has been applied to a customer.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CustomersApi.new
external_customer_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | The customer external unique identifier (provided by your own application)
applied_coupon_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier of the applied coupon, created by Lago.

begin
  # Delete an applied coupon
  result = api_instance.delete_applied_coupon(external_customer_id, applied_coupon_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->delete_applied_coupon: #{e}"
end
```

#### Using the delete_applied_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppliedCoupon>, Integer, Hash)> delete_applied_coupon_with_http_info(external_customer_id, applied_coupon_id)

```ruby
begin
  # Delete an applied coupon
  data, status_code, headers = api_instance.delete_applied_coupon_with_http_info(external_customer_id, applied_coupon_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppliedCoupon>
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->delete_applied_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **applied_coupon_id** | **String** | Unique identifier of the applied coupon, created by Lago. |  |

### Return type

[**AppliedCoupon**](AppliedCoupon.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## destroy_customer

> <Customer> destroy_customer(external_id)

Delete a customer

This endpoint deletes an existing customer.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CustomersApi.new
external_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | External ID of the existing customer

begin
  # Delete a customer
  result = api_instance.destroy_customer(external_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->destroy_customer: #{e}"
end
```

#### Using the destroy_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> destroy_customer_with_http_info(external_id)

```ruby
begin
  # Delete a customer
  data, status_code, headers = api_instance.destroy_customer_with_http_info(external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->destroy_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | External ID of the existing customer |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_customers

> <CustomersPaginated> find_all_customers(opts)

List all customers

This endpoint retrieves all existing customers.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CustomersApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all customers
  result = api_instance.find_all_customers(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->find_all_customers: #{e}"
end
```

#### Using the find_all_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersPaginated>, Integer, Hash)> find_all_customers_with_http_info(opts)

```ruby
begin
  # List all customers
  data, status_code, headers = api_instance.find_all_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersPaginated>
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->find_all_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**CustomersPaginated**](CustomersPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_customer

> <Customer> find_customer(external_id)

Retrieve a customer

This endpoint retrieves an existing customer.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CustomersApi.new
external_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | External ID of the existing customer

begin
  # Retrieve a customer
  result = api_instance.find_customer(external_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->find_customer: #{e}"
end
```

#### Using the find_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> find_customer_with_http_info(external_id)

```ruby
begin
  # Retrieve a customer
  data, status_code, headers = api_instance.find_customer_with_http_info(external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->find_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | External ID of the existing customer |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_customer_current_usage

> <CustomerUsage> find_customer_current_usage(external_customer_id, external_subscription_id)

Retrieve customer current usage

This endpoint enables the retrieval of the usage-based billing data for a customer within the current period.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CustomersApi.new
external_customer_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | The customer external unique identifier (provided by your own application).
external_subscription_id = 'sub_1234567890' # String | The unique identifier of the subscription within your application.

begin
  # Retrieve customer current usage
  result = api_instance.find_customer_current_usage(external_customer_id, external_subscription_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->find_customer_current_usage: #{e}"
end
```

#### Using the find_customer_current_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerUsage>, Integer, Hash)> find_customer_current_usage_with_http_info(external_customer_id, external_subscription_id)

```ruby
begin
  # Retrieve customer current usage
  data, status_code, headers = api_instance.find_customer_current_usage_with_http_info(external_customer_id, external_subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerUsage>
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->find_customer_current_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application). |  |
| **external_subscription_id** | **String** | The unique identifier of the subscription within your application. |  |

### Return type

[**CustomerUsage**](CustomerUsage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_portal_url

> <GetCustomerPortalUrl200Response> get_customer_portal_url(external_customer_id)

Get a customer portal URL

Retrieves an embeddable link for displaying a customer portal.  This endpoint allows you to fetch the URL that can be embedded to provide customers access to a dedicated portal

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CustomersApi.new
external_customer_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | External ID of the existing customer

begin
  # Get a customer portal URL
  result = api_instance.get_customer_portal_url(external_customer_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->get_customer_portal_url: #{e}"
end
```

#### Using the get_customer_portal_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomerPortalUrl200Response>, Integer, Hash)> get_customer_portal_url_with_http_info(external_customer_id)

```ruby
begin
  # Get a customer portal URL
  data, status_code, headers = api_instance.get_customer_portal_url_with_http_info(external_customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomerPortalUrl200Response>
rescue LagoAPI::ApiError => e
  puts "Error when calling CustomersApi->get_customer_portal_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | External ID of the existing customer |  |

### Return type

[**GetCustomerPortalUrl200Response**](GetCustomerPortalUrl200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

