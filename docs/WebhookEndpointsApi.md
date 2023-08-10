# OpenapiClient::WebhookEndpointsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_endpoint**](WebhookEndpointsApi.md#create_webhook_endpoint) | **POST** /webhook_endpoints | Create a webhook_endpoint |
| [**destroy_webhook_endpoint**](WebhookEndpointsApi.md#destroy_webhook_endpoint) | **DELETE** /webhook_endpoints/{lago_id} | Delete a webhook endpoint |
| [**find_all_webhook_endpoints**](WebhookEndpointsApi.md#find_all_webhook_endpoints) | **GET** /webhook_endpoints | List all webhook endpoints |
| [**find_webhook_endpoint**](WebhookEndpointsApi.md#find_webhook_endpoint) | **GET** /webhook_endpoints/{lago_id} | Retrieve a webhook endpoint |
| [**update_webhook_endpoint**](WebhookEndpointsApi.md#update_webhook_endpoint) | **PUT** /webhook_endpoints/{lago_id} | Update a webhook endpoint |


## create_webhook_endpoint

> <CreateWebhookEndpoint200Response> create_webhook_endpoint(create_webhook_endpoint_request)

Create a webhook_endpoint

This endpoint is used to create a webhook endpoint.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhookEndpointsApi.new
create_webhook_endpoint_request = OpenapiClient::CreateWebhookEndpointRequest.new # CreateWebhookEndpointRequest | Webhook Endpoint payload

begin
  # Create a webhook_endpoint
  result = api_instance.create_webhook_endpoint(create_webhook_endpoint_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->create_webhook_endpoint: #{e}"
end
```

#### Using the create_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookEndpoint200Response>, Integer, Hash)> create_webhook_endpoint_with_http_info(create_webhook_endpoint_request)

```ruby
begin
  # Create a webhook_endpoint
  data, status_code, headers = api_instance.create_webhook_endpoint_with_http_info(create_webhook_endpoint_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookEndpoint200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->create_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_endpoint_request** | [**CreateWebhookEndpointRequest**](CreateWebhookEndpointRequest.md) | Webhook Endpoint payload |  |

### Return type

[**CreateWebhookEndpoint200Response**](CreateWebhookEndpoint200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_webhook_endpoint

> Object destroy_webhook_endpoint(lago_id)

Delete a webhook endpoint

This endpoint is used to delete an existing webhook endpoint.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhookEndpointsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint's record within the Lago system.

begin
  # Delete a webhook endpoint
  result = api_instance.destroy_webhook_endpoint(lago_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->destroy_webhook_endpoint: #{e}"
end
```

#### Using the destroy_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> destroy_webhook_endpoint_with_http_info(lago_id)

```ruby
begin
  # Delete a webhook endpoint
  data, status_code, headers = api_instance.destroy_webhook_endpoint_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->destroy_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint&#39;s record within the Lago system. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_webhook_endpoints

> <FindAllWebhookEndpoints200Response> find_all_webhook_endpoints(opts)

List all webhook endpoints

This endpoint is used to list all webhook endpoints.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhookEndpointsApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all webhook endpoints
  result = api_instance.find_all_webhook_endpoints(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_all_webhook_endpoints: #{e}"
end
```

#### Using the find_all_webhook_endpoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindAllWebhookEndpoints200Response>, Integer, Hash)> find_all_webhook_endpoints_with_http_info(opts)

```ruby
begin
  # List all webhook endpoints
  data, status_code, headers = api_instance.find_all_webhook_endpoints_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindAllWebhookEndpoints200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_all_webhook_endpoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**FindAllWebhookEndpoints200Response**](FindAllWebhookEndpoints200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_webhook_endpoint

> Object find_webhook_endpoint(lago_id)

Retrieve a webhook endpoint

This endpoint is used to retrieve an existing webhook endpoint.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhookEndpointsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint's record within the Lago system.

begin
  # Retrieve a webhook endpoint
  result = api_instance.find_webhook_endpoint(lago_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_webhook_endpoint: #{e}"
end
```

#### Using the find_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> find_webhook_endpoint_with_http_info(lago_id)

```ruby
begin
  # Retrieve a webhook endpoint
  data, status_code, headers = api_instance.find_webhook_endpoint_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->find_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint&#39;s record within the Lago system. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook_endpoint

> Object update_webhook_endpoint(lago_id, create_webhook_endpoint_request)

Update a webhook endpoint

This endpoint is used to update an existing webhook endpoint.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhookEndpointsApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint's record within the Lago system.
create_webhook_endpoint_request = OpenapiClient::CreateWebhookEndpointRequest.new # CreateWebhookEndpointRequest | Webhook Endpoint update payload

begin
  # Update a webhook endpoint
  result = api_instance.update_webhook_endpoint(lago_id, create_webhook_endpoint_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->update_webhook_endpoint: #{e}"
end
```

#### Using the update_webhook_endpoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_webhook_endpoint_with_http_info(lago_id, create_webhook_endpoint_request)

```ruby
begin
  # Update a webhook endpoint
  data, status_code, headers = api_instance.update_webhook_endpoint_with_http_info(lago_id, create_webhook_endpoint_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->update_webhook_endpoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint&#39;s record within the Lago system. |  |
| **create_webhook_endpoint_request** | [**CreateWebhookEndpointRequest**](CreateWebhookEndpointRequest.md) | Webhook Endpoint update payload |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

