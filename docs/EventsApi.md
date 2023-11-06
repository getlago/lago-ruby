# LagoAPI::EventsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_events**](EventsApi.md#create_batch_events) | **POST** /events/batch | Batch multiple events |
| [**create_event**](EventsApi.md#create_event) | **POST** /events | Send usage events |
| [**event_estimate_fees**](EventsApi.md#event_estimate_fees) | **POST** /events/estimate_fees | Estimate fees for a pay in advance charge |
| [**find_event**](EventsApi.md#find_event) | **GET** /events/{transaction_id} | Retrieve a specific event |


## create_batch_events

> create_batch_events(event_batch_input)

Batch multiple events

This endpoint is used for transmitting a batch of usage measurement events to multiple subscriptions for a single customer.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::EventsApi.new
event_batch_input = LagoAPI::EventBatchInput.new({event: LagoAPI::EventBatchInputEvent.new({transaction_id: 'transaction_1234567890', external_subscription_ids: ["sub_1234567890", "sub_0987654321"], code: 'storage'})}) # EventBatchInput | Batch events payload

begin
  # Batch multiple events
  api_instance.create_batch_events(event_batch_input)
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->create_batch_events: #{e}"
end
```

#### Using the create_batch_events_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_batch_events_with_http_info(event_batch_input)

```ruby
begin
  # Batch multiple events
  data, status_code, headers = api_instance.create_batch_events_with_http_info(event_batch_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->create_batch_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_batch_input** | [**EventBatchInput**](EventBatchInput.md) | Batch events payload |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_event

> <Event> create_event(event_input)

Send usage events

This endpoint is used for transmitting usage measurement events to either a designated customer or a specific subscription.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::EventsApi.new
event_input = LagoAPI::EventInput.new({event: LagoAPI::EventInputEvent.new({transaction_id: 'transaction_1234567890', code: 'storage'})}) # EventInput | Event payload

begin
  # Send usage events
  result = api_instance.create_event(event_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> create_event_with_http_info(event_input)

```ruby
begin
  # Send usage events
  data, status_code, headers = api_instance.create_event_with_http_info(event_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->create_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_input** | [**EventInput**](EventInput.md) | Event payload |  |

### Return type

[**Event**](Event.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## event_estimate_fees

> <Fees> event_estimate_fees(event_estimate_fees_input)

Estimate fees for a pay in advance charge

Estimate the fees that would be created after reception of an event for a billable metric attached to one or multiple pay in advance charges

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::EventsApi.new
event_estimate_fees_input = LagoAPI::EventEstimateFeesInput.new({event: LagoAPI::EventEstimateFeesInputEvent.new({code: 'storage'})}) # EventEstimateFeesInput | Event estimate payload

begin
  # Estimate fees for a pay in advance charge
  result = api_instance.event_estimate_fees(event_estimate_fees_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->event_estimate_fees: #{e}"
end
```

#### Using the event_estimate_fees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Fees>, Integer, Hash)> event_estimate_fees_with_http_info(event_estimate_fees_input)

```ruby
begin
  # Estimate fees for a pay in advance charge
  data, status_code, headers = api_instance.event_estimate_fees_with_http_info(event_estimate_fees_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Fees>
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->event_estimate_fees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_estimate_fees_input** | [**EventEstimateFeesInput**](EventEstimateFeesInput.md) | Event estimate payload |  |

### Return type

[**Fees**](Fees.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_event

> <Event> find_event(transaction_id)

Retrieve a specific event

This endpoint is used for retrieving a specific usage measurement event that has been sent to a customer or a subscription.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::EventsApi.new
transaction_id = 'transaction_1234567890' # String | This field represents the unique identifier sent for this specific event.

begin
  # Retrieve a specific event
  result = api_instance.find_event(transaction_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->find_event: #{e}"
end
```

#### Using the find_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> find_event_with_http_info(transaction_id)

```ruby
begin
  # Retrieve a specific event
  data, status_code, headers = api_instance.find_event_with_http_info(transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue LagoAPI::ApiError => e
  puts "Error when calling EventsApi->find_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | This field represents the unique identifier sent for this specific event. |  |

### Return type

[**Event**](Event.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

