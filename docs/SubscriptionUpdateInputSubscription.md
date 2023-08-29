# LagoAPI::SubscriptionUpdateInputSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The display name of the subscription on an invoice. This field allows for customization of the subscription&#39;s name for billing purposes, especially useful when a single customer has multiple subscriptions using the same plan. | [optional] |
| **subscription_at** | **Time** | The start date and time of the subscription. This field can only be modified for pending subscriptions that have not yet started. This date should be provided in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::SubscriptionUpdateInputSubscription.new(
  name: Repository B,
  subscription_at: 2022-08-08T00:00Z
)
```

