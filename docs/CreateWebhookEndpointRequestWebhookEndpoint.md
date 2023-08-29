# LagoAPI::CreateWebhookEndpointRequestWebhookEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_url** | **String** | The URL of the webhook endpoint. |  |
| **signature_algo** | **String** | The signature used for the webhook. If no value is passed, | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreateWebhookEndpointRequestWebhookEndpoint.new(
  webhook_url: https://foo.bar,
  signature_algo: hmac
)
```

