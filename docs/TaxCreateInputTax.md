# LagoAPI::TaxCreateInputTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the tax. |  |
| **code** | **String** | Unique code used to identify the tax associated with the API request. |  |
| **rate** | **String** | The percentage rate of the tax |  |
| **description** | **String** | Internal description of the taxe | [optional] |
| **applied_to_organization** | **Boolean** | Set to &#x60;true&#x60; if the tax is used as one of the organization&#39;s default | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::TaxCreateInputTax.new(
  name: TVA,
  code: french_standard_vat,
  rate: 20.0,
  description: French standard VAT,
  applied_to_organization: true
)
```

