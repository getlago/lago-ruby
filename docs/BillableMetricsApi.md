# OpenapiClient::BillableMetricsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_billable_metric**](BillableMetricsApi.md#create_billable_metric) | **POST** /billable_metrics | Create a billable metric |
| [**destroy_billable_metric**](BillableMetricsApi.md#destroy_billable_metric) | **DELETE** /billable_metrics/{code} | Delete a billable metric |
| [**find_all_billable_metric_groups**](BillableMetricsApi.md#find_all_billable_metric_groups) | **GET** /billable_metrics/{code}/groups | Find a billable metric&#39;s groups |
| [**find_all_billable_metrics**](BillableMetricsApi.md#find_all_billable_metrics) | **GET** /billable_metrics | List all billable metrics |
| [**find_billable_metric**](BillableMetricsApi.md#find_billable_metric) | **GET** /billable_metrics/{code} | Retrieve a billable metric |
| [**update_billable_metric**](BillableMetricsApi.md#update_billable_metric) | **PUT** /billable_metrics/{code} | Update a billable metric |


## create_billable_metric

> <BillableMetric> create_billable_metric(billable_metric_create_input)

Create a billable metric

This endpoint creates a new billable metric representing a pricing component of your application.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::BillableMetricsApi.new
billable_metric_create_input = OpenapiClient::BillableMetricCreateInput.new({billable_metric: OpenapiClient::BillableMetricCreateInputBillableMetric.new({name: 'Storage', code: 'storage', aggregation_type: 'count_agg'})}) # BillableMetricCreateInput | Billable metric payload

begin
  # Create a billable metric
  result = api_instance.create_billable_metric(billable_metric_create_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->create_billable_metric: #{e}"
end
```

#### Using the create_billable_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillableMetric>, Integer, Hash)> create_billable_metric_with_http_info(billable_metric_create_input)

```ruby
begin
  # Create a billable metric
  data, status_code, headers = api_instance.create_billable_metric_with_http_info(billable_metric_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillableMetric>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->create_billable_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billable_metric_create_input** | [**BillableMetricCreateInput**](BillableMetricCreateInput.md) | Billable metric payload |  |

### Return type

[**BillableMetric**](BillableMetric.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_billable_metric

> <BillableMetric> destroy_billable_metric(code)

Delete a billable metric

This endpoint deletes an existing billable metric representing a pricing component of your application.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::BillableMetricsApi.new
code = 'storage' # String | Code of the existing billable metric.

begin
  # Delete a billable metric
  result = api_instance.destroy_billable_metric(code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->destroy_billable_metric: #{e}"
end
```

#### Using the destroy_billable_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillableMetric>, Integer, Hash)> destroy_billable_metric_with_http_info(code)

```ruby
begin
  # Delete a billable metric
  data, status_code, headers = api_instance.destroy_billable_metric_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillableMetric>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->destroy_billable_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code of the existing billable metric. |  |

### Return type

[**BillableMetric**](BillableMetric.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_billable_metric_groups

> <GroupsPaginated> find_all_billable_metric_groups(code, opts)

Find a billable metric's groups

This endpoint retrieves all groups for a billable metric.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::BillableMetricsApi.new
code = 'example_code' # String | Code of the existing billable metric.
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # Find a billable metric's groups
  result = api_instance.find_all_billable_metric_groups(code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->find_all_billable_metric_groups: #{e}"
end
```

#### Using the find_all_billable_metric_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsPaginated>, Integer, Hash)> find_all_billable_metric_groups_with_http_info(code, opts)

```ruby
begin
  # Find a billable metric's groups
  data, status_code, headers = api_instance.find_all_billable_metric_groups_with_http_info(code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsPaginated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->find_all_billable_metric_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code of the existing billable metric. |  |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**GroupsPaginated**](GroupsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_billable_metrics

> <BillableMetricsPaginated> find_all_billable_metrics(opts)

List all billable metrics

This endpoint retrieves all existing billable metrics that represent pricing components of your application.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::BillableMetricsApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all billable metrics
  result = api_instance.find_all_billable_metrics(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->find_all_billable_metrics: #{e}"
end
```

#### Using the find_all_billable_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillableMetricsPaginated>, Integer, Hash)> find_all_billable_metrics_with_http_info(opts)

```ruby
begin
  # List all billable metrics
  data, status_code, headers = api_instance.find_all_billable_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillableMetricsPaginated>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->find_all_billable_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**BillableMetricsPaginated**](BillableMetricsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_billable_metric

> <BillableMetric> find_billable_metric(code)

Retrieve a billable metric

This endpoint retrieves an existing billable metric that represents a pricing component of your application. The billable metric is identified by its unique code.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::BillableMetricsApi.new
code = 'storage' # String | Code of the existing billable metric.

begin
  # Retrieve a billable metric
  result = api_instance.find_billable_metric(code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->find_billable_metric: #{e}"
end
```

#### Using the find_billable_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillableMetric>, Integer, Hash)> find_billable_metric_with_http_info(code)

```ruby
begin
  # Retrieve a billable metric
  data, status_code, headers = api_instance.find_billable_metric_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillableMetric>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->find_billable_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code of the existing billable metric. |  |

### Return type

[**BillableMetric**](BillableMetric.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_billable_metric

> <BillableMetric> update_billable_metric(code, billable_metric_update_input)

Update a billable metric

This endpoint updates an existing billable metric representing a pricing component of your application.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::BillableMetricsApi.new
code = 'storage' # String | Code of the existing billable metric.
billable_metric_update_input = OpenapiClient::BillableMetricUpdateInput.new({billable_metric: OpenapiClient::BillableMetricBaseInput.new}) # BillableMetricUpdateInput | Billable metric payload

begin
  # Update a billable metric
  result = api_instance.update_billable_metric(code, billable_metric_update_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->update_billable_metric: #{e}"
end
```

#### Using the update_billable_metric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillableMetric>, Integer, Hash)> update_billable_metric_with_http_info(code, billable_metric_update_input)

```ruby
begin
  # Update a billable metric
  data, status_code, headers = api_instance.update_billable_metric_with_http_info(code, billable_metric_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillableMetric>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillableMetricsApi->update_billable_metric_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code of the existing billable metric. |  |
| **billable_metric_update_input** | [**BillableMetricUpdateInput**](BillableMetricUpdateInput.md) | Billable metric payload |  |

### Return type

[**BillableMetric**](BillableMetric.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

