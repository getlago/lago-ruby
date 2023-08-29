# LagoAPI::WebhooksApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fetch_public_key**](WebhooksApi.md#fetch_public_key) | **GET** /webhooks/public_key | Retrieve webhook public key |


## fetch_public_key

> String fetch_public_key

Retrieve webhook public key

This endpoint is used to retrieve the public key used to verify the webhooks signature

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::WebhooksApi.new

begin
  # Retrieve webhook public key
  result = api_instance.fetch_public_key
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhooksApi->fetch_public_key: #{e}"
end
```

#### Using the fetch_public_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> fetch_public_key_with_http_info

```ruby
begin
  # Retrieve webhook public key
  data, status_code, headers = api_instance.fetch_public_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LagoAPI::ApiError => e
  puts "Error when calling WebhooksApi->fetch_public_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json

