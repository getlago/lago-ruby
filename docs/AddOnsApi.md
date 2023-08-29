# LagoAPI::AddOnsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**apply_add_on**](AddOnsApi.md#apply_add_on) | **POST** /applied_add_ons | Apply an add-on to a customer |
| [**create_add_on**](AddOnsApi.md#create_add_on) | **POST** /add_ons | Create an add-on |
| [**destroy_add_on**](AddOnsApi.md#destroy_add_on) | **DELETE** /add_ons/{code} | Delete an add-on |
| [**find_add_on**](AddOnsApi.md#find_add_on) | **GET** /add_ons/{code} | Retrieve an add-on |
| [**find_all_add_ons**](AddOnsApi.md#find_all_add_ons) | **GET** /add_ons | List all add-ons |
| [**update_add_on**](AddOnsApi.md#update_add_on) | **PUT** /add_ons/{code} | Update an add-on |


## apply_add_on

> <AppliedAddOn> apply_add_on(applied_add_on_input)

Apply an add-on to a customer

Apply an add-on to a customer

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AddOnsApi.new
applied_add_on_input = LagoAPI::AppliedAddOnInput.new({applied_add_on: LagoAPI::AppliedAddOnInputAppliedAddOn.new({external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba', add_on_code: 'setup_fee'})}) # AppliedAddOnInput | Apply add-on payload

begin
  # Apply an add-on to a customer
  result = api_instance.apply_add_on(applied_add_on_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->apply_add_on: #{e}"
end
```

#### Using the apply_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppliedAddOn>, Integer, Hash)> apply_add_on_with_http_info(applied_add_on_input)

```ruby
begin
  # Apply an add-on to a customer
  data, status_code, headers = api_instance.apply_add_on_with_http_info(applied_add_on_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppliedAddOn>
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->apply_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_add_on_input** | [**AppliedAddOnInput**](AppliedAddOnInput.md) | Apply add-on payload |  |

### Return type

[**AppliedAddOn**](AppliedAddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_add_on

> <AddOn> create_add_on(add_on_create_input)

Create an add-on

This endpoint is used to create an add-on that can be then attached to a one-off invoice.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AddOnsApi.new
add_on_create_input = LagoAPI::AddOnCreateInput.new({add_on: LagoAPI::AddOnCreateInputAddOn.new({name: 'Setup Fee', code: 'setup_fee', amount_cents: 50000, amount_currency: LagoAPI::Currency::AED})}) # AddOnCreateInput | Add-on payload

begin
  # Create an add-on
  result = api_instance.create_add_on(add_on_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->create_add_on: #{e}"
end
```

#### Using the create_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOn>, Integer, Hash)> create_add_on_with_http_info(add_on_create_input)

```ruby
begin
  # Create an add-on
  data, status_code, headers = api_instance.create_add_on_with_http_info(add_on_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOn>
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->create_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_on_create_input** | [**AddOnCreateInput**](AddOnCreateInput.md) | Add-on payload |  |

### Return type

[**AddOn**](AddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_add_on

> <AddOn> destroy_add_on(code)

Delete an add-on

This endpoint is used to delete an existing add-on.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AddOnsApi.new
code = 'setup_fee' # String | Unique code used to identify the add-on.

begin
  # Delete an add-on
  result = api_instance.destroy_add_on(code)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->destroy_add_on: #{e}"
end
```

#### Using the destroy_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOn>, Integer, Hash)> destroy_add_on_with_http_info(code)

```ruby
begin
  # Delete an add-on
  data, status_code, headers = api_instance.destroy_add_on_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOn>
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->destroy_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Unique code used to identify the add-on. |  |

### Return type

[**AddOn**](AddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_add_on

> <AddOn> find_add_on(code)

Retrieve an add-on

This endpoint is used to retrieve a specific add-on.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AddOnsApi.new
code = 'setup_fee' # String | Unique code used to identify the add-on.

begin
  # Retrieve an add-on
  result = api_instance.find_add_on(code)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->find_add_on: #{e}"
end
```

#### Using the find_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOn>, Integer, Hash)> find_add_on_with_http_info(code)

```ruby
begin
  # Retrieve an add-on
  data, status_code, headers = api_instance.find_add_on_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOn>
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->find_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Unique code used to identify the add-on. |  |

### Return type

[**AddOn**](AddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_add_ons

> <AddOnsPaginated> find_all_add_ons(opts)

List all add-ons

This endpoint is used to list all existing add-ons.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AddOnsApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all add-ons
  result = api_instance.find_all_add_ons(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->find_all_add_ons: #{e}"
end
```

#### Using the find_all_add_ons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOnsPaginated>, Integer, Hash)> find_all_add_ons_with_http_info(opts)

```ruby
begin
  # List all add-ons
  data, status_code, headers = api_instance.find_all_add_ons_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOnsPaginated>
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->find_all_add_ons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**AddOnsPaginated**](AddOnsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_add_on

> <AddOn> update_add_on(code, add_on_update_input)

Update an add-on

This endpoint is used to update an existing add-on.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AddOnsApi.new
code = 'setup_fee' # String | Unique code used to identify the add-on.
add_on_update_input = LagoAPI::AddOnUpdateInput.new({add_on: LagoAPI::AddOnBaseInput.new}) # AddOnUpdateInput | Add-on payload

begin
  # Update an add-on
  result = api_instance.update_add_on(code, add_on_update_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->update_add_on: #{e}"
end
```

#### Using the update_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOn>, Integer, Hash)> update_add_on_with_http_info(code, add_on_update_input)

```ruby
begin
  # Update an add-on
  data, status_code, headers = api_instance.update_add_on_with_http_info(code, add_on_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOn>
rescue LagoAPI::ApiError => e
  puts "Error when calling AddOnsApi->update_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Unique code used to identify the add-on. |  |
| **add_on_update_input** | [**AddOnUpdateInput**](AddOnUpdateInput.md) | Add-on payload |  |

### Return type

[**AddOn**](AddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

