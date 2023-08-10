# OpenapiClient::InvoicesApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_invoice**](InvoicesApi.md#create_invoice) | **POST** /invoices | Create a one-off invoice |
| [**download_invoice**](InvoicesApi.md#download_invoice) | **POST** /invoices/{lago_id}/download | Download an invoice PDF |
| [**finalize_invoice**](InvoicesApi.md#finalize_invoice) | **PUT** /invoices/{lago_id}/finalize | Finalize a draft invoice |
| [**find_all_invoices**](InvoicesApi.md#find_all_invoices) | **GET** /invoices | List all invoices |
| [**find_invoice**](InvoicesApi.md#find_invoice) | **GET** /invoices/{lago_id} | Retrieve an invoice |
| [**refresh_invoice**](InvoicesApi.md#refresh_invoice) | **PUT** /invoices/{lago_id}/refresh | Refresh a draft invoice |
| [**retry_payment**](InvoicesApi.md#retry_payment) | **POST** /invoices/{lago_id}/retry_payment | Retry an invoice payment |
| [**update_invoice**](InvoicesApi.md#update_invoice) | **PUT** /invoices/{lago_id} | Update an invoice |


## create_invoice

> <Invoice> create_invoice(invoice_one_off_create_input)

Create a one-off invoice

This endpoint is used for issuing a one-off invoice.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
invoice_one_off_create_input = OpenapiClient::InvoiceOneOffCreateInput.new({invoice: OpenapiClient::InvoiceOneOffCreateInputInvoice.new({external_customer_id: 'hooli_1234', fees: [OpenapiClient::InvoiceOneOffCreateInputInvoiceFeesInner.new({add_on_code: 'setup_fee'})]})}) # InvoiceOneOffCreateInput | Invoice payload

begin
  # Create a one-off invoice
  result = api_instance.create_invoice(invoice_one_off_create_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->create_invoice: #{e}"
end
```

#### Using the create_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> create_invoice_with_http_info(invoice_one_off_create_input)

```ruby
begin
  # Create a one-off invoice
  data, status_code, headers = api_instance.create_invoice_with_http_info(invoice_one_off_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->create_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_one_off_create_input** | [**InvoiceOneOffCreateInput**](InvoiceOneOffCreateInput.md) | Invoice payload |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## download_invoice

> <Invoice> download_invoice(lago_id)

Download an invoice PDF

This endpoint is used for downloading a specific invoice PDF document.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.

begin
  # Download an invoice PDF
  result = api_instance.download_invoice(lago_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->download_invoice: #{e}"
end
```

#### Using the download_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> download_invoice_with_http_info(lago_id)

```ruby
begin
  # Download an invoice PDF
  data, status_code, headers = api_instance.download_invoice_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->download_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system. |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_invoice

> <Invoice> finalize_invoice(lago_id)

Finalize a draft invoice

This endpoint is used for finalizing a draft invoice.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.

begin
  # Finalize a draft invoice
  result = api_instance.finalize_invoice(lago_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->finalize_invoice: #{e}"
end
```

#### Using the finalize_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> finalize_invoice_with_http_info(lago_id)

```ruby
begin
  # Finalize a draft invoice
  data, status_code, headers = api_instance.finalize_invoice_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->finalize_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system. |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_invoices

> <InvoicesPaginated> find_all_invoices(opts)

List all invoices

This endpoint is used for retrievign all invoices.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20, # Integer | Number of records per page.
  external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba', # String | Unique identifier assigned to the customer in your application.
  issuing_date_from: Date.parse('Fri Jul 08 00:00:00 UTC 2022'), # Date | Filter invoices starting from a specific date.
  issuing_date_to: Date.parse('Tue Aug 09 00:00:00 UTC 2022'), # Date | Filter invoices up to a specific date.
  status: 'draft', # String | Filter invoices by status. Possible values are `draft` or `finalized`.
  payment_status: 'pending' # String | Filter invoices by payment status. Possible values are `pending`, `failed` or `succeeded`.
}

begin
  # List all invoices
  result = api_instance.find_all_invoices(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->find_all_invoices: #{e}"
end
```

#### Using the find_all_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoicesPaginated>, Integer, Hash)> find_all_invoices_with_http_info(opts)

```ruby
begin
  # List all invoices
  data, status_code, headers = api_instance.find_all_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoicesPaginated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->find_all_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |
| **external_customer_id** | **String** | Unique identifier assigned to the customer in your application. | [optional] |
| **issuing_date_from** | **Date** | Filter invoices starting from a specific date. | [optional] |
| **issuing_date_to** | **Date** | Filter invoices up to a specific date. | [optional] |
| **status** | **String** | Filter invoices by status. Possible values are &#x60;draft&#x60; or &#x60;finalized&#x60;. | [optional] |
| **payment_status** | **String** | Filter invoices by payment status. Possible values are &#x60;pending&#x60;, &#x60;failed&#x60; or &#x60;succeeded&#x60;. | [optional] |

### Return type

[**InvoicesPaginated**](InvoicesPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_invoice

> <Invoice> find_invoice(lago_id)

Retrieve an invoice

This endpoint is used for retrieving a specific invoice that has been issued.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.

begin
  # Retrieve an invoice
  result = api_instance.find_invoice(lago_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->find_invoice: #{e}"
end
```

#### Using the find_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> find_invoice_with_http_info(lago_id)

```ruby
begin
  # Retrieve an invoice
  data, status_code, headers = api_instance.find_invoice_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->find_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system. |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_invoice

> <Invoice> refresh_invoice(lago_id)

Refresh a draft invoice

This endpoint is used for refreshing a draft invoice.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.

begin
  # Refresh a draft invoice
  result = api_instance.refresh_invoice(lago_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->refresh_invoice: #{e}"
end
```

#### Using the refresh_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> refresh_invoice_with_http_info(lago_id)

```ruby
begin
  # Refresh a draft invoice
  data, status_code, headers = api_instance.refresh_invoice_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->refresh_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system. |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retry_payment

> retry_payment(lago_id)

Retry an invoice payment

This endpoint resends an invoice for collection and retry a payment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.

begin
  # Retry an invoice payment
  api_instance.retry_payment(lago_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->retry_payment: #{e}"
end
```

#### Using the retry_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> retry_payment_with_http_info(lago_id)

```ruby
begin
  # Retry an invoice payment
  data, status_code, headers = api_instance.retry_payment_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->retry_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_invoice

> <Invoice> update_invoice(lago_id, invoice_update_input)

Update an invoice

This endpoint is used for updating an existing invoice.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InvoicesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
invoice_update_input = OpenapiClient::InvoiceUpdateInput.new({invoice: OpenapiClient::InvoiceUpdateInputInvoice.new}) # InvoiceUpdateInput | Update an existing invoice

begin
  # Update an invoice
  result = api_instance.update_invoice(lago_id, invoice_update_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->update_invoice: #{e}"
end
```

#### Using the update_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> update_invoice_with_http_info(lago_id, invoice_update_input)

```ruby
begin
  # Update an invoice
  data, status_code, headers = api_instance.update_invoice_with_http_info(lago_id, invoice_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicesApi->update_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system. |  |
| **invoice_update_input** | [**InvoiceUpdateInput**](InvoiceUpdateInput.md) | Update an existing invoice |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

