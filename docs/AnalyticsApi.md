# LagoAPI::AnalyticsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_all_gross_revenues**](AnalyticsApi.md#find_all_gross_revenues) | **GET** /analytics/gross_revenue | List gross revenue |
| [**find_all_invoiced_usages**](AnalyticsApi.md#find_all_invoiced_usages) | **GET** /analytics/invoiced_usage | List usage revenue |
| [**find_all_mrrs**](AnalyticsApi.md#find_all_mrrs) | **GET** /analytics/mrr | List MRR |
| [**find_all_outstanding_invoices**](AnalyticsApi.md#find_all_outstanding_invoices) | **GET** /analytics/outstanding_invoices | List outstanding invoices |


## find_all_gross_revenues

> <GrossRevenues> find_all_gross_revenues(opts)

List gross revenue

Gross revenue is the sum of monthly `finalized` invoice payments and fees paid in advance that are not invoiceable. This total is calculated after deducting taxes and discounts.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AnalyticsApi.new
opts = {
  currency: LagoAPI::Currency::AED, # Currency | Currency of revenue analytics. Format must be ISO 4217.
  external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | The customer external unique identifier (provided by your own application). Use it to filter revenue analytics at the customer level.
}

begin
  # List gross revenue
  result = api_instance.find_all_gross_revenues(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_gross_revenues: #{e}"
end
```

#### Using the find_all_gross_revenues_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrossRevenues>, Integer, Hash)> find_all_gross_revenues_with_http_info(opts)

```ruby
begin
  # List gross revenue
  data, status_code, headers = api_instance.find_all_gross_revenues_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrossRevenues>
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_gross_revenues_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](.md) | Currency of revenue analytics. Format must be ISO 4217. | [optional] |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application). Use it to filter revenue analytics at the customer level. | [optional] |

### Return type

[**GrossRevenues**](GrossRevenues.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_invoiced_usages

> <InvoicedUsages> find_all_invoiced_usages(opts)

List usage revenue

Reports a monthly analysis focused on the revenue generated from all usage-based fees. It exclusively accounts for revenue that has been formally invoiced. Importantly, this report does not include revenue related to the usage in the current billing period, limiting its scope to previously invoiced amounts.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AnalyticsApi.new
opts = {
  currency: LagoAPI::Currency::AED # Currency | The currency of invoiced usage analytics. Format must be ISO 4217.
}

begin
  # List usage revenue
  result = api_instance.find_all_invoiced_usages(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_invoiced_usages: #{e}"
end
```

#### Using the find_all_invoiced_usages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoicedUsages>, Integer, Hash)> find_all_invoiced_usages_with_http_info(opts)

```ruby
begin
  # List usage revenue
  data, status_code, headers = api_instance.find_all_invoiced_usages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoicedUsages>
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_invoiced_usages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](.md) | The currency of invoiced usage analytics. Format must be ISO 4217. | [optional] |

### Return type

[**InvoicedUsages**](InvoicedUsages.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_mrrs

> <Mrrs> find_all_mrrs(opts)

List MRR

This endpoint is used to list MRR.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AnalyticsApi.new
opts = {
  currency: LagoAPI::Currency::AED, # Currency | Quantifies the revenue generated from `subscription` fees on a monthly basis. This figure is calculated post-application of applicable taxes and prior to the deduction of any applicable discounts. The method of calculation varies based on the subscription billing cycle:  - Revenue from `monthly` subscription invoices is included in the MRR for the month in which the invoice is issued. - Revenue from `quarterly` subscription invoices is distributed evenly over three months. This distribution applies to fees paid in advance (allocated to the next three months) as well as to fees paid in arrears (allocated to the preceding three months). - Revenue from `yearly` subscription invoices is distributed evenly over twelve months. This allocation is applicable for fees paid in advance (spread over the next twelve months) and for fees paid in arrears (spread over the previous twelve months). - Revenue from `weekly` subscription invoices, the total revenue from all invoices issued within a month is summed up. This total is then divided by the number of invoices issued during that month, and the result is multiplied by 4.33, representing the average number of weeks in a month.
  months: 12 # Integer | Show data only for given number of months.
}

begin
  # List MRR
  result = api_instance.find_all_mrrs(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_mrrs: #{e}"
end
```

#### Using the find_all_mrrs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Mrrs>, Integer, Hash)> find_all_mrrs_with_http_info(opts)

```ruby
begin
  # List MRR
  data, status_code, headers = api_instance.find_all_mrrs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Mrrs>
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_mrrs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](.md) | Quantifies the revenue generated from &#x60;subscription&#x60; fees on a monthly basis. This figure is calculated post-application of applicable taxes and prior to the deduction of any applicable discounts. The method of calculation varies based on the subscription billing cycle:  - Revenue from &#x60;monthly&#x60; subscription invoices is included in the MRR for the month in which the invoice is issued. - Revenue from &#x60;quarterly&#x60; subscription invoices is distributed evenly over three months. This distribution applies to fees paid in advance (allocated to the next three months) as well as to fees paid in arrears (allocated to the preceding three months). - Revenue from &#x60;yearly&#x60; subscription invoices is distributed evenly over twelve months. This allocation is applicable for fees paid in advance (spread over the next twelve months) and for fees paid in arrears (spread over the previous twelve months). - Revenue from &#x60;weekly&#x60; subscription invoices, the total revenue from all invoices issued within a month is summed up. This total is then divided by the number of invoices issued during that month, and the result is multiplied by 4.33, representing the average number of weeks in a month. | [optional] |
| **months** | **Integer** | Show data only for given number of months. | [optional] |

### Return type

[**Mrrs**](Mrrs.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_outstanding_invoices

> <OutstandingInvoices> find_all_outstanding_invoices(opts)

List outstanding invoices

Represents a monthly aggregation, detailing both the total count and the cumulative amount of invoices that have been marked as `finalized`. This report sorts invoices categorically based on their `payment_status`.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::AnalyticsApi.new
opts = {
  currency: LagoAPI::Currency::AED # Currency | The currency of revenue analytics. Format must be ISO 4217.
}

begin
  # List outstanding invoices
  result = api_instance.find_all_outstanding_invoices(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_outstanding_invoices: #{e}"
end
```

#### Using the find_all_outstanding_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OutstandingInvoices>, Integer, Hash)> find_all_outstanding_invoices_with_http_info(opts)

```ruby
begin
  # List outstanding invoices
  data, status_code, headers = api_instance.find_all_outstanding_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OutstandingInvoices>
rescue LagoAPI::ApiError => e
  puts "Error when calling AnalyticsApi->find_all_outstanding_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](.md) | The currency of revenue analytics. Format must be ISO 4217. | [optional] |

### Return type

[**OutstandingInvoices**](OutstandingInvoices.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

