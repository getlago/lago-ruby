# LagoAPI::PlansApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan**](PlansApi.md#create_plan) | **POST** /plans | Create a plan |
| [**destroy_plan**](PlansApi.md#destroy_plan) | **DELETE** /plans/{code} | Delete a plan |
| [**find_all_plans**](PlansApi.md#find_all_plans) | **GET** /plans | List all plans |
| [**find_plan**](PlansApi.md#find_plan) | **GET** /plans/{code} | Retrieve a plan |
| [**update_plan**](PlansApi.md#update_plan) | **PUT** /plans/{code} | Update a plan |


## create_plan

> <Plan> create_plan(plan_create_input)

Create a plan

This endpoint creates a plan with subscription and usage-based charges. It supports flexible billing cadence (in-advance or in-arrears) and allows for both recurring and metered charges.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::PlansApi.new
plan_create_input = LagoAPI::PlanCreateInput.new({plan: LagoAPI::PlanCreateInputPlan.new}) # PlanCreateInput | Plan payload

begin
  # Create a plan
  result = api_instance.create_plan(plan_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->create_plan: #{e}"
end
```

#### Using the create_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Plan>, Integer, Hash)> create_plan_with_http_info(plan_create_input)

```ruby
begin
  # Create a plan
  data, status_code, headers = api_instance.create_plan_with_http_info(plan_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Plan>
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->create_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_create_input** | [**PlanCreateInput**](PlanCreateInput.md) | Plan payload |  |

### Return type

[**Plan**](Plan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_plan

> <Plan> destroy_plan(code)

Delete a plan

This endpoint deletes a specific plan. Note that this plan could be associated with active subscriptions.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::PlansApi.new
code = 'startup' # String | The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance.

begin
  # Delete a plan
  result = api_instance.destroy_plan(code)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->destroy_plan: #{e}"
end
```

#### Using the destroy_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Plan>, Integer, Hash)> destroy_plan_with_http_info(code)

```ruby
begin
  # Delete a plan
  data, status_code, headers = api_instance.destroy_plan_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Plan>
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->destroy_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance. |  |

### Return type

[**Plan**](Plan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_plans

> <PlansPaginated> find_all_plans(opts)

List all plans

This endpoint retrieves all existing plans.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::PlansApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20 # Integer | Number of records per page.
}

begin
  # List all plans
  result = api_instance.find_all_plans(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->find_all_plans: #{e}"
end
```

#### Using the find_all_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansPaginated>, Integer, Hash)> find_all_plans_with_http_info(opts)

```ruby
begin
  # List all plans
  data, status_code, headers = api_instance.find_all_plans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansPaginated>
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->find_all_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |

### Return type

[**PlansPaginated**](PlansPaginated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_plan

> <Plan> find_plan(code)

Retrieve a plan

This endpoint retrieves a specific plan.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::PlansApi.new
code = 'startup' # String | The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance.

begin
  # Retrieve a plan
  result = api_instance.find_plan(code)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->find_plan: #{e}"
end
```

#### Using the find_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Plan>, Integer, Hash)> find_plan_with_http_info(code)

```ruby
begin
  # Retrieve a plan
  data, status_code, headers = api_instance.find_plan_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Plan>
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->find_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance. |  |

### Return type

[**Plan**](Plan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_plan

> <Plan> update_plan(code, plan_update_input)

Update a plan

This endpoint updates a specific plan with subscription and usage-based charges. It supports flexible billing cadence (in-advance or in-arrears) and allows for both recurring and metered charges.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::PlansApi.new
code = 'startup' # String | The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance.
plan_update_input = LagoAPI::PlanUpdateInput.new({plan: LagoAPI::PlanUpdateInputPlan.new}) # PlanUpdateInput | Plan payload

begin
  # Update a plan
  result = api_instance.update_plan(code, plan_update_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->update_plan: #{e}"
end
```

#### Using the update_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Plan>, Integer, Hash)> update_plan_with_http_info(code, plan_update_input)

```ruby
begin
  # Update a plan
  data, status_code, headers = api_instance.update_plan_with_http_info(code, plan_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Plan>
rescue LagoAPI::ApiError => e
  puts "Error when calling PlansApi->update_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance. |  |
| **plan_update_input** | [**PlanUpdateInput**](PlanUpdateInput.md) | Plan payload |  |

### Return type

[**Plan**](Plan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

