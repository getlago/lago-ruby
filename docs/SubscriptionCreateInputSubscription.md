# LagoAPI::SubscriptionCreateInputSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_customer_id** | **String** | The customer external unique identifier (provided by your own application) |  |
| **plan_code** | **String** | The unique code representing the plan to be attached to the customer. This code must correspond to the &#x60;code&#x60; property of one of the active plans. |  |
| **name** | **String** | The display name of the subscription on an invoice. This field allows for customization of the subscription&#39;s name for billing purposes, especially useful when a single customer has multiple subscriptions using the same plan. | [optional] |
| **external_id** | **String** | The unique external identifier for the subscription. This identifier serves as an idempotency key, ensuring that each subscription is unique. |  |
| **billing_time** | **String** | The billing time for the subscription, which can be set as either &#x60;anniversary&#x60; or &#x60;calendar&#x60;. If not explicitly provided, it will default to &#x60;calendar&#x60;. The billing time determines the timing of recurring billing cycles for the subscription. By specifying &#x60;anniversary&#x60;, the billing cycle will be based on the specific date the subscription started (billed fully), while &#x60;calendar&#x60; sets the billing cycle at the first day of the week/month/year (billed with proration). | [optional] |
| **subscription_at** | **Time** | The start date for the subscription, allowing for the creation of subscriptions that can begin in the past or future. Please note that it cannot be used to update the start date of a pending subscription or schedule an upgrade/downgrade. The start_date should be provided in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::SubscriptionCreateInputSubscription.new(
  external_customer_id: 5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba,
  plan_code: premium,
  name: Repository A,
  external_id: my_sub_1234567890,
  billing_time: anniversary,
  subscription_at: 2022-08-08T00:00Z
)
```

