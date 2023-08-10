# OpenapiClient::TaxesApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tax**](TaxesApi.md#create_tax) | **POST** /taxes | Create a tax |
| [**destroy_tax**](TaxesApi.md#destroy_tax) | **DELETE** /taxes/{code} | Delete a tax |
| [**find_all_taxes**](TaxesApi.md#find_all_taxes) | **GET** /taxes | List all taxes |
| [**find_tax**](TaxesApi.md#find_tax) | **GET** /taxes/{code} | Retrieve a Tax |
| [**update_tax**](TaxesApi.md#update_tax) | **PUT** /taxes/{code} | Update a tax |


## create_tax

> <Tax> create_tax(tax_create_input)

Create a tax

This endpoint creates a new tax representing a customizable tax rate applicable to either the organization or a specific customer.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
tax_create_input = OpenapiClient::TaxCreateInput.new({tax: OpenapiClient::TaxCreateInputTax.new({name: 'TVA', code: 'french_standard_vat', rate: '20.0'})}) # TaxCreateInput | Tax creation payload

begin
  # Create a tax
  result = api_instance.create_tax(tax_create_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->create_tax: #{e}"
end
```

#### Using the create_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tax>, Integer, Hash)> create_tax_with_http_info(tax_create_input)

```ruby
begin
  # Create a tax
  data, status_code, headers = api_instance.create_tax_with_http_info(tax_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tax>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->create_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_create_input** | [**TaxCreateInput**](TaxCreateInput.md) | Tax creation payload |  |

### Return type

[**Tax**](Tax.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_tax

> <Tax> destroy_tax(code)

Delete a tax

This endpoint is used to delete a tax.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
code = 'french_standard_vat' # String | The code of the tax. It serves as a unique identifier associated with a particular tax. The code is typically used for internal or system-level identification purposes.

begin
  # Delete a tax
  result = api_instance.destroy_tax(code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->destroy_tax: #{e}"
end
```

#### Using the destroy_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tax>, Integer, Hash)> destroy_tax_with_http_info(code)

```ruby
begin
  # Delete a tax
  data, status_code, headers = api_instance.destroy_tax_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tax>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->destroy_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the tax. It serves as a unique identifier associated with a particular tax. The code is typically used for internal or system-level identification purposes. |  |

### Return type

[**Tax**](Tax.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_taxes

> <TaxesPaginated> find_all_taxes(opts)

List all taxes

This endpoint retrieves all existing taxes representing a customizable tax rate applicable to either the organization or a specific customer.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all taxes
  result = api_instance.find_all_taxes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->find_all_taxes: #{e}"
end
```

#### Using the find_all_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxesPaginated>, Integer, Hash)> find_all_taxes_with_http_info(opts)

```ruby
begin
  # List all taxes
  data, status_code, headers = api_instance.find_all_taxes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxesPaginated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->find_all_taxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**TaxesPaginated**](TaxesPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_tax

> <Tax> find_tax(code)

Retrieve a Tax

This endpoint retrieves an existing tax representing a customizable tax rate applicable to either the organization or a specific customer. The tax is identified by its unique code.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
code = 'french_standard_vat' # String | The code of the tax. It serves as a unique identifier associated with a particular tax. The code is typically used for internal or system-level identification purposes.

begin
  # Retrieve a Tax
  result = api_instance.find_tax(code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->find_tax: #{e}"
end
```

#### Using the find_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tax>, Integer, Hash)> find_tax_with_http_info(code)

```ruby
begin
  # Retrieve a Tax
  data, status_code, headers = api_instance.find_tax_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tax>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->find_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the tax. It serves as a unique identifier associated with a particular tax. The code is typically used for internal or system-level identification purposes. |  |

### Return type

[**Tax**](Tax.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tax

> <Tax> update_tax(code, tax_update_input)

Update a tax

This endpoint updates an existing tax representing a customizable tax rate applicable to either the organization or a specific customer.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
code = 'french_standard_vat' # String | The code of the tax. It serves as a unique identifier associated with a particular tax. The code is typically used for internal or system-level identification purposes.
tax_update_input = OpenapiClient::TaxUpdateInput.new({tax: OpenapiClient::TaxBaseInput.new}) # TaxUpdateInput | Tax update payload

begin
  # Update a tax
  result = api_instance.update_tax(code, tax_update_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->update_tax: #{e}"
end
```

#### Using the update_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tax>, Integer, Hash)> update_tax_with_http_info(code, tax_update_input)

```ruby
begin
  # Update a tax
  data, status_code, headers = api_instance.update_tax_with_http_info(code, tax_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tax>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TaxesApi->update_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the tax. It serves as a unique identifier associated with a particular tax. The code is typically used for internal or system-level identification purposes. |  |
| **tax_update_input** | [**TaxUpdateInput**](TaxUpdateInput.md) | Tax update payload |  |

### Return type

[**Tax**](Tax.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

