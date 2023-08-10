# OpenapiClient::OrganizationsApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_organization**](OrganizationsApi.md#update_organization) | **PUT** /organizations | Update your organization |


## update_organization

> <Organization> update_organization(organization_update_input)

Update your organization

This endpoint is used to update your own organization's settings.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
organization_update_input = OpenapiClient::OrganizationUpdateInput.new({organization: OpenapiClient::OrganizationUpdateInputOrganization.new}) # OrganizationUpdateInput | Update an existing organization

begin
  # Update your organization
  result = api_instance.update_organization(organization_update_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization: #{e}"
end
```

#### Using the update_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> update_organization_with_http_info(organization_update_input)

```ruby
begin
  # Update your organization
  data, status_code, headers = api_instance.update_organization_with_http_info(organization_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_update_input** | [**OrganizationUpdateInput**](OrganizationUpdateInput.md) | Update an existing organization |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

