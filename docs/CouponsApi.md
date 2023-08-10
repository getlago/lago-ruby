# OpenapiClient::CouponsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**apply_coupon**](CouponsApi.md#apply_coupon) | **POST** /applied_coupons | Apply a coupon to a customer |
| [**create_coupon**](CouponsApi.md#create_coupon) | **POST** /coupons | Create a coupon |
| [**delete_applied_coupon**](CouponsApi.md#delete_applied_coupon) | **DELETE** /customers/{external_customer_id}/applied_coupons/{applied_coupon_id} | Delete an applied coupon |
| [**destroy_coupon**](CouponsApi.md#destroy_coupon) | **DELETE** /coupons/{code} | Delete a coupon |
| [**find_all_applied_coupons**](CouponsApi.md#find_all_applied_coupons) | **GET** /applied_coupons | List all applied coupons |
| [**find_all_coupons**](CouponsApi.md#find_all_coupons) | **GET** /coupons | List all coupons |
| [**find_coupon**](CouponsApi.md#find_coupon) | **GET** /coupons/{code} | Retrieve a coupon |
| [**update_coupon**](CouponsApi.md#update_coupon) | **PUT** /coupons/{code} | Update a coupon |


## apply_coupon

> <AppliedCoupon> apply_coupon(applied_coupon_input)

Apply a coupon to a customer

This endpoint is used to apply a specific coupon to a customer, before or during a subscription.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
applied_coupon_input = OpenapiClient::AppliedCouponInput.new({applied_coupon: OpenapiClient::AppliedCouponInputAppliedCoupon.new({external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba', coupon_code: 'startup_deal'})}) # AppliedCouponInput | Apply coupon payload

begin
  # Apply a coupon to a customer
  result = api_instance.apply_coupon(applied_coupon_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->apply_coupon: #{e}"
end
```

#### Using the apply_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppliedCoupon>, Integer, Hash)> apply_coupon_with_http_info(applied_coupon_input)

```ruby
begin
  # Apply a coupon to a customer
  data, status_code, headers = api_instance.apply_coupon_with_http_info(applied_coupon_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppliedCoupon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->apply_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_coupon_input** | [**AppliedCouponInput**](AppliedCouponInput.md) | Apply coupon payload |  |

### Return type

[**AppliedCoupon**](AppliedCoupon.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_coupon

> <Coupon> create_coupon(coupon_create_input)

Create a coupon

This endpoint is used to create a coupon that can be then attached to a customer to create a discount.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
coupon_create_input = OpenapiClient::CouponCreateInput.new({coupon: OpenapiClient::CouponCreateInputCoupon.new({name: 'Startup Deal', code: 'startup_deal', coupon_type: 'fixed_amount', frequency: 'once'})}) # CouponCreateInput | Coupon payload

begin
  # Create a coupon
  result = api_instance.create_coupon(coupon_create_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->create_coupon: #{e}"
end
```

#### Using the create_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Coupon>, Integer, Hash)> create_coupon_with_http_info(coupon_create_input)

```ruby
begin
  # Create a coupon
  data, status_code, headers = api_instance.create_coupon_with_http_info(coupon_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Coupon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->create_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coupon_create_input** | [**CouponCreateInput**](CouponCreateInput.md) | Coupon payload |  |

### Return type

[**Coupon**](Coupon.md)

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
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
external_customer_id = '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | The customer external unique identifier (provided by your own application)
applied_coupon_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier of the applied coupon, created by Lago.

begin
  # Delete an applied coupon
  result = api_instance.delete_applied_coupon(external_customer_id, applied_coupon_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->delete_applied_coupon: #{e}"
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
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->delete_applied_coupon_with_http_info: #{e}"
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


## destroy_coupon

> <Coupon> destroy_coupon(code)

Delete a coupon

This endpoint is used to delete a coupon.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
code = 'startup_deal' # String | Unique code used to identify the coupon.

begin
  # Delete a coupon
  result = api_instance.destroy_coupon(code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->destroy_coupon: #{e}"
end
```

#### Using the destroy_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Coupon>, Integer, Hash)> destroy_coupon_with_http_info(code)

```ruby
begin
  # Delete a coupon
  data, status_code, headers = api_instance.destroy_coupon_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Coupon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->destroy_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Unique code used to identify the coupon. |  |

### Return type

[**Coupon**](Coupon.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_applied_coupons

> <AppliedCouponsPaginated> find_all_applied_coupons(opts)

List all applied coupons

This endpoint is used to list all applied coupons. You can filter by coupon status and by customer.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20, # Integer | Number of records per page.
  status: 'active', # String | The status of the coupon. Can be either `active` or `terminated`.
  external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | The customer external unique identifier (provided by your own application)
}

begin
  # List all applied coupons
  result = api_instance.find_all_applied_coupons(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->find_all_applied_coupons: #{e}"
end
```

#### Using the find_all_applied_coupons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppliedCouponsPaginated>, Integer, Hash)> find_all_applied_coupons_with_http_info(opts)

```ruby
begin
  # List all applied coupons
  data, status_code, headers = api_instance.find_all_applied_coupons_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppliedCouponsPaginated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->find_all_applied_coupons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |
| **status** | **String** | The status of the coupon. Can be either &#x60;active&#x60; or &#x60;terminated&#x60;. | [optional] |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) | [optional] |

### Return type

[**AppliedCouponsPaginated**](AppliedCouponsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_coupons

> <CouponsPaginated> find_all_coupons(opts)

List all coupons

This endpoint is used to list all existing coupons.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all coupons
  result = api_instance.find_all_coupons(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->find_all_coupons: #{e}"
end
```

#### Using the find_all_coupons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CouponsPaginated>, Integer, Hash)> find_all_coupons_with_http_info(opts)

```ruby
begin
  # List all coupons
  data, status_code, headers = api_instance.find_all_coupons_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CouponsPaginated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->find_all_coupons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**CouponsPaginated**](CouponsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_coupon

> <Coupon> find_coupon(code)

Retrieve a coupon

This endpoint is used to retrieve a specific coupon.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
code = 'startup_deal' # String | Unique code used to identify the coupon.

begin
  # Retrieve a coupon
  result = api_instance.find_coupon(code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->find_coupon: #{e}"
end
```

#### Using the find_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Coupon>, Integer, Hash)> find_coupon_with_http_info(code)

```ruby
begin
  # Retrieve a coupon
  data, status_code, headers = api_instance.find_coupon_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Coupon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->find_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Unique code used to identify the coupon. |  |

### Return type

[**Coupon**](Coupon.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_coupon

> <Coupon> update_coupon(code, coupon_update_input)

Update a coupon

This endpoint is used to update a coupon that can be then attached to a customer to create a discount.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::CouponsApi.new
code = 'startup_deal' # String | Unique code used to identify the coupon.
coupon_update_input = OpenapiClient::CouponUpdateInput.new({coupon: OpenapiClient::CouponBaseInput.new}) # CouponUpdateInput | Coupon payload

begin
  # Update a coupon
  result = api_instance.update_coupon(code, coupon_update_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->update_coupon: #{e}"
end
```

#### Using the update_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Coupon>, Integer, Hash)> update_coupon_with_http_info(code, coupon_update_input)

```ruby
begin
  # Update a coupon
  data, status_code, headers = api_instance.update_coupon_with_http_info(code, coupon_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Coupon>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CouponsApi->update_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Unique code used to identify the coupon. |  |
| **coupon_update_input** | [**CouponUpdateInput**](CouponUpdateInput.md) | Coupon payload |  |

### Return type

[**Coupon**](Coupon.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

