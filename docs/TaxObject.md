# LagoAPI::TaxObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier of the tax, created by Lago. |  |
| **name** | **String** | Name of the tax. |  |
| **code** | **String** | Unique code used to identify the tax associated with the API request. |  |
| **description** | **String** | Internal description of the taxe | [optional] |
| **rate** | **Float** | The percentage rate of the tax |  |
| **applied_to_organization** | **Boolean** | Set to &#x60;true&#x60; if the tax is used as one of the organization&#39;s default |  |
| **add_ons_count** | **Integer** | Number of add-ons this tax is applied to. | [optional] |
| **charges_count** | **Integer** | Number of charges this tax is applied to. | [optional] |
| **customers_count** | **Integer** | Number of customers this tax is applied to (directly or via the organization&#39;s default). |  |
| **plans_count** | **Integer** | Number of plans this tax is applied to. | [optional] |
| **created_at** | **Time** | Creation date of the tax. |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::TaxObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  name: TVA,
  code: french_standard_vat,
  description: French standard VAT,
  rate: 20,
  applied_to_organization: true,
  add_ons_count: 0,
  charges_count: 0,
  customers_count: 0,
  plans_count: 0,
  created_at: 2023-07-06T14:35:58Z
)
```

