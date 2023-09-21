# LagoAPI::WebhookEndpointObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the webhook endpoint&#39;s record within the Lago system. |  |
| **lago_organization_id** | **String** | Unique identifier assigned to the organization attached to the webhook endpoint within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the organization’s record within the Lago system. |  |
| **webhook_url** | **String** | The name of the wallet. |  |
| **signature_algo** | **String** | The signature algo for the webhook. | [optional] |
| **created_at** | **Time** | The date of the webhook endpoint creation, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::WebhookEndpointObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_organization_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  webhook_url: Prepaid,
  signature_algo: hmac,
  created_at: 2022-04-29T08:59:51Z
)
```

