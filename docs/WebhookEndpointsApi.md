# LagoAPI::WebhookEndpointsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_endpoint**](WebhookEndpointsApi.md#create_webhook_endpoint) | **POST** /webhook_endpoints | Create a webhook_endpoint |
| [**destroy_webhook_endpoint**](WebhookEndpointsApi.md#destroy_webhook_endpoint) | **DELETE** /webhook_endpoints/{lago_id} | Delete a webhook endpoint |
| [**find_all_webhook_endpoints**](WebhookEndpointsApi.md#find_all_webhook_endpoints) | **GET** /webhook_endpoints | List all webhook endpoints |
| [**find_webhook_endpoint**](WebhookEndpointsApi.md#find_webhook_endpoint) | **GET** /webhook_endpoints/{lago_id} | Retrieve a webhook endpoint |
| [**update_webhook_endpoint**](WebhookEndpointsApi.md#update_webhook_endpoint) | **PUT** /webhook_endpoints/{lago_id} | Update a webhook endpoint |


## create_webhook_endpoint

> <WebhookEndpoint> create_webhook_endpoint(webhook_endpoint_create_input)

Create a webhook_endpoint

This endpoint is used to create a webhook endpoint.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WebhookEndpointsApi.new
webhook_endpoint_create_input = LagoAPI::WebhookEndpointCreateInput.new # WebhookEndpointCreateInput | Webhook Endpoint payload

begin
  # Create a webhook_endpoint
  result = api_instance.create_webhook_endpoint(webhook_endpoint_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->create_webhook_endpoint: #{e}"
end
```

#### Using the create_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> create_webhook_endpoint_with_http_info(webhook_endpoint_create_input)

```ruby
begin
  # Create a webhook_endpoint
  data, status_code, headers = api_instance.create_webhook_endpoint_with_http_info(webhook_endpoint_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->create_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_endpoint_create_input** | [**WebhookEndpointCreateInput**](WebhookEndpointCreateInput.md) | Webhook Endpoint payload |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_webhook_endpoint

> <WebhookEndpoint> destroy_webhook_endpoint(lago_id)

Delete a webhook endpoint

This endpoint is used to delete an existing webhook endpoint.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WebhookEndpointsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint's record within the Lago system.

begin
  # Delete a webhook endpoint
  result = api_instance.destroy_webhook_endpoint(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->destroy_webhook_endpoint: #{e}"
end
```

#### Using the destroy_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> destroy_webhook_endpoint_with_http_info(lago_id)

```ruby
begin
  # Delete a webhook endpoint
  data, status_code, headers = api_instance.destroy_webhook_endpoint_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->destroy_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint&#39;s record within the Lago system. |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_webhook_endpoints

> <WebhookEndpointsPaginated> find_all_webhook_endpoints(opts)

List all webhook endpoints

This endpoint is used to list all webhook endpoints.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WebhookEndpointsApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all webhook endpoints
  result = api_instance.find_all_webhook_endpoints(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_all_webhook_endpoints: #{e}"
end
```

#### Using the find_all_webhook_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpointsPaginated>, Integer, Hash)> find_all_webhook_endpoints_with_http_info(opts)

```ruby
begin
  # List all webhook endpoints
  data, status_code, headers = api_instance.find_all_webhook_endpoints_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpointsPaginated>
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_all_webhook_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**WebhookEndpointsPaginated**](WebhookEndpointsPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_webhook_endpoint

> <WebhookEndpoint> find_webhook_endpoint(lago_id)

Retrieve a webhook endpoint

This endpoint is used to retrieve an existing webhook endpoint.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WebhookEndpointsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint's record within the Lago system.

begin
  # Retrieve a webhook endpoint
  result = api_instance.find_webhook_endpoint(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_webhook_endpoint: #{e}"
end
```

#### Using the find_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> find_webhook_endpoint_with_http_info(lago_id)

```ruby
begin
  # Retrieve a webhook endpoint
  data, status_code, headers = api_instance.find_webhook_endpoint_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint&#39;s record within the Lago system. |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook_endpoint

> <WebhookEndpoint> update_webhook_endpoint(lago_id, webhook_endpoint_update_input)

Update a webhook endpoint

This endpoint is used to update an existing webhook endpoint.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WebhookEndpointsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint's record within the Lago system.
webhook_endpoint_update_input = LagoAPI::WebhookEndpointUpdateInput.new # WebhookEndpointUpdateInput | Webhook Endpoint update payload

begin
  # Update a webhook endpoint
  result = api_instance.update_webhook_endpoint(lago_id, webhook_endpoint_update_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->update_webhook_endpoint: #{e}"
end
```

#### Using the update_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> update_webhook_endpoint_with_http_info(lago_id, webhook_endpoint_update_input)

```ruby
begin
  # Update a webhook endpoint
  data, status_code, headers = api_instance.update_webhook_endpoint_with_http_info(lago_id, webhook_endpoint_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhookEndpointsApi->update_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint&#39;s record within the Lago system. |  |
| **webhook_endpoint_update_input** | [**WebhookEndpointUpdateInput**](WebhookEndpointUpdateInput.md) | Webhook Endpoint update payload |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

