# lago_ruby

LagoAPI - the Ruby gem for the Lago API documentation

Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.51.0-beta
- Package version: 0.51.0-beta
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

[![Gem Version](https://badge.fury.io/rb/lago-ruby.svg)](https://badge.fury.io/rb/lago-ruby)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://spdx.org/licenses/MIT.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build lago_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./lago_ruby-0.51.0-beta.gem
```

(for development, run `gem install --dev ./lago_ruby-0.51.0-beta.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'lago_ruby', '~> 0.51.0-beta'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'lago_ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'lago_ruby'

# Setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = LagoAPI::AddOnsApi.new
add_on_create_input = LagoAPI::AddOnCreateInput.new({add_on: LagoAPI::AddOnCreateInputAddOn.new({name: 'Setup Fee', code: 'setup_fee', amount_cents: 50000, amount_currency: LagoAPI::Currency::AED})}) # AddOnCreateInput | Add-on payload

begin
  #Create an add-on
  result = api_instance.create_add_on(add_on_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Exception when calling AddOnsApi->create_add_on: #{e}"
end

```

## Documentation for API Endpoints

The Lago API documentation documentation is available at https://doc.getlago.com.

All URIs are relative to *https://api.getlago.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*LagoAPI::AddOnsApi* | [**create_add_on**](docs/AddOnsApi.md#create_add_on) | **POST** /add_ons | Create an add-on
*LagoAPI::AddOnsApi* | [**destroy_add_on**](docs/AddOnsApi.md#destroy_add_on) | **DELETE** /add_ons/{code} | Delete an add-on
*LagoAPI::AddOnsApi* | [**find_add_on**](docs/AddOnsApi.md#find_add_on) | **GET** /add_ons/{code} | Retrieve an add-on
*LagoAPI::AddOnsApi* | [**find_all_add_ons**](docs/AddOnsApi.md#find_all_add_ons) | **GET** /add_ons | List all add-ons
*LagoAPI::AddOnsApi* | [**update_add_on**](docs/AddOnsApi.md#update_add_on) | **PUT** /add_ons/{code} | Update an add-on
*LagoAPI::BillableMetricsApi* | [**create_billable_metric**](docs/BillableMetricsApi.md#create_billable_metric) | **POST** /billable_metrics | Create a billable metric
*LagoAPI::BillableMetricsApi* | [**destroy_billable_metric**](docs/BillableMetricsApi.md#destroy_billable_metric) | **DELETE** /billable_metrics/{code} | Delete a billable metric
*LagoAPI::BillableMetricsApi* | [**find_all_billable_metric_groups**](docs/BillableMetricsApi.md#find_all_billable_metric_groups) | **GET** /billable_metrics/{code}/groups | Find a billable metric's groups
*LagoAPI::BillableMetricsApi* | [**find_all_billable_metrics**](docs/BillableMetricsApi.md#find_all_billable_metrics) | **GET** /billable_metrics | List all billable metrics
*LagoAPI::BillableMetricsApi* | [**find_billable_metric**](docs/BillableMetricsApi.md#find_billable_metric) | **GET** /billable_metrics/{code} | Retrieve a billable metric
*LagoAPI::BillableMetricsApi* | [**update_billable_metric**](docs/BillableMetricsApi.md#update_billable_metric) | **PUT** /billable_metrics/{code} | Update a billable metric
*LagoAPI::CouponsApi* | [**apply_coupon**](docs/CouponsApi.md#apply_coupon) | **POST** /applied_coupons | Apply a coupon to a customer
*LagoAPI::CouponsApi* | [**create_coupon**](docs/CouponsApi.md#create_coupon) | **POST** /coupons | Create a coupon
*LagoAPI::CouponsApi* | [**delete_applied_coupon**](docs/CouponsApi.md#delete_applied_coupon) | **DELETE** /customers/{external_customer_id}/applied_coupons/{applied_coupon_id} | Delete an applied coupon
*LagoAPI::CouponsApi* | [**destroy_coupon**](docs/CouponsApi.md#destroy_coupon) | **DELETE** /coupons/{code} | Delete a coupon
*LagoAPI::CouponsApi* | [**find_all_applied_coupons**](docs/CouponsApi.md#find_all_applied_coupons) | **GET** /applied_coupons | List all applied coupons
*LagoAPI::CouponsApi* | [**find_all_coupons**](docs/CouponsApi.md#find_all_coupons) | **GET** /coupons | List all coupons
*LagoAPI::CouponsApi* | [**find_coupon**](docs/CouponsApi.md#find_coupon) | **GET** /coupons/{code} | Retrieve a coupon
*LagoAPI::CouponsApi* | [**update_coupon**](docs/CouponsApi.md#update_coupon) | **PUT** /coupons/{code} | Update a coupon
*LagoAPI::CreditNotesApi* | [**create_credit_note**](docs/CreditNotesApi.md#create_credit_note) | **POST** /credit_notes | Create a credit note
*LagoAPI::CreditNotesApi* | [**download_credit_note**](docs/CreditNotesApi.md#download_credit_note) | **POST** /credit_notes/{lago_id}/download | Download a credit note PDF
*LagoAPI::CreditNotesApi* | [**estimate_credit_note**](docs/CreditNotesApi.md#estimate_credit_note) | **POST** /credit_notes/estimate | Estimate amounts for a new credit note
*LagoAPI::CreditNotesApi* | [**find_all_credit_notes**](docs/CreditNotesApi.md#find_all_credit_notes) | **GET** /credit_notes | List all credit notes
*LagoAPI::CreditNotesApi* | [**find_credit_note**](docs/CreditNotesApi.md#find_credit_note) | **GET** /credit_notes/{lago_id} | Retrieve a credit note
*LagoAPI::CreditNotesApi* | [**update_credit_note**](docs/CreditNotesApi.md#update_credit_note) | **PUT** /credit_notes/{lago_id} | Update a credit note
*LagoAPI::CreditNotesApi* | [**void_credit_note**](docs/CreditNotesApi.md#void_credit_note) | **PUT** /credit_notes/{lago_id}/void | Void a credit note
*LagoAPI::CustomersApi* | [**create_customer**](docs/CustomersApi.md#create_customer) | **POST** /customers | Create a customer
*LagoAPI::CustomersApi* | [**delete_applied_coupon**](docs/CustomersApi.md#delete_applied_coupon) | **DELETE** /customers/{external_customer_id}/applied_coupons/{applied_coupon_id} | Delete an applied coupon
*LagoAPI::CustomersApi* | [**destroy_customer**](docs/CustomersApi.md#destroy_customer) | **DELETE** /customers/{external_id} | Delete a customer
*LagoAPI::CustomersApi* | [**find_all_customer_past_usage**](docs/CustomersApi.md#find_all_customer_past_usage) | **GET** /customers/{external_customer_id}/past_usage | Retrieve customer past usage
*LagoAPI::CustomersApi* | [**find_all_customers**](docs/CustomersApi.md#find_all_customers) | **GET** /customers | List all customers
*LagoAPI::CustomersApi* | [**find_customer**](docs/CustomersApi.md#find_customer) | **GET** /customers/{external_id} | Retrieve a customer
*LagoAPI::CustomersApi* | [**find_customer_current_usage**](docs/CustomersApi.md#find_customer_current_usage) | **GET** /customers/{external_customer_id}/current_usage | Retrieve customer current usage
*LagoAPI::CustomersApi* | [**get_customer_portal_url**](docs/CustomersApi.md#get_customer_portal_url) | **GET** /customers/{external_customer_id}/portal_url | Get a customer portal URL
*LagoAPI::EventsApi* | [**create_batch_events**](docs/EventsApi.md#create_batch_events) | **POST** /events/batch | Batch multiple events
*LagoAPI::EventsApi* | [**create_event**](docs/EventsApi.md#create_event) | **POST** /events | Send usage events
*LagoAPI::EventsApi* | [**event_estimate_fees**](docs/EventsApi.md#event_estimate_fees) | **POST** /events/estimate_fees | Estimate fees for a pay in advance charge
*LagoAPI::EventsApi* | [**find_event**](docs/EventsApi.md#find_event) | **GET** /events/{transaction_id} | Retrieve a specific event
*LagoAPI::FeesApi* | [**find_all_fees**](docs/FeesApi.md#find_all_fees) | **GET** /fees | List all fees
*LagoAPI::FeesApi* | [**find_fee**](docs/FeesApi.md#find_fee) | **GET** /fees/{lago_id} | Retrieve a specific fee
*LagoAPI::FeesApi* | [**update_fee**](docs/FeesApi.md#update_fee) | **PUT** /fees/{lago_id} | Update a fee
*LagoAPI::InvoicesApi* | [**create_invoice**](docs/InvoicesApi.md#create_invoice) | **POST** /invoices | Create a one-off invoice
*LagoAPI::InvoicesApi* | [**download_invoice**](docs/InvoicesApi.md#download_invoice) | **POST** /invoices/{lago_id}/download | Download an invoice PDF
*LagoAPI::InvoicesApi* | [**finalize_invoice**](docs/InvoicesApi.md#finalize_invoice) | **PUT** /invoices/{lago_id}/finalize | Finalize a draft invoice
*LagoAPI::InvoicesApi* | [**find_all_invoices**](docs/InvoicesApi.md#find_all_invoices) | **GET** /invoices | List all invoices
*LagoAPI::InvoicesApi* | [**find_invoice**](docs/InvoicesApi.md#find_invoice) | **GET** /invoices/{lago_id} | Retrieve an invoice
*LagoAPI::InvoicesApi* | [**refresh_invoice**](docs/InvoicesApi.md#refresh_invoice) | **PUT** /invoices/{lago_id}/refresh | Refresh a draft invoice
*LagoAPI::InvoicesApi* | [**retry_payment**](docs/InvoicesApi.md#retry_payment) | **POST** /invoices/{lago_id}/retry_payment | Retry an invoice payment
*LagoAPI::InvoicesApi* | [**update_invoice**](docs/InvoicesApi.md#update_invoice) | **PUT** /invoices/{lago_id} | Update an invoice
*LagoAPI::OrganizationsApi* | [**update_organization**](docs/OrganizationsApi.md#update_organization) | **PUT** /organizations | Update your organization
*LagoAPI::PlansApi* | [**create_plan**](docs/PlansApi.md#create_plan) | **POST** /plans | Create a plan
*LagoAPI::PlansApi* | [**destroy_plan**](docs/PlansApi.md#destroy_plan) | **DELETE** /plans/{code} | Delete a plan
*LagoAPI::PlansApi* | [**find_all_plans**](docs/PlansApi.md#find_all_plans) | **GET** /plans | List all plans
*LagoAPI::PlansApi* | [**find_plan**](docs/PlansApi.md#find_plan) | **GET** /plans/{code} | Retrieve a plan
*LagoAPI::PlansApi* | [**update_plan**](docs/PlansApi.md#update_plan) | **PUT** /plans/{code} | Update a plan
*LagoAPI::SubscriptionsApi* | [**create_subscription**](docs/SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Assign a plan to a customer
*LagoAPI::SubscriptionsApi* | [**destroy_subscription**](docs/SubscriptionsApi.md#destroy_subscription) | **DELETE** /subscriptions/{external_id} | Terminate a subscription
*LagoAPI::SubscriptionsApi* | [**find_all_subscriptions**](docs/SubscriptionsApi.md#find_all_subscriptions) | **GET** /subscriptions | List all subscriptions
*LagoAPI::SubscriptionsApi* | [**find_subscription**](docs/SubscriptionsApi.md#find_subscription) | **GET** /subscriptions/{external_id} | Retrieve a subscription
*LagoAPI::SubscriptionsApi* | [**update_subscription**](docs/SubscriptionsApi.md#update_subscription) | **PUT** /subscriptions/{external_id} | Update a subscription
*LagoAPI::TaxesApi* | [**create_tax**](docs/TaxesApi.md#create_tax) | **POST** /taxes | Create a tax
*LagoAPI::TaxesApi* | [**destroy_tax**](docs/TaxesApi.md#destroy_tax) | **DELETE** /taxes/{code} | Delete a tax
*LagoAPI::TaxesApi* | [**find_all_taxes**](docs/TaxesApi.md#find_all_taxes) | **GET** /taxes | List all taxes
*LagoAPI::TaxesApi* | [**find_tax**](docs/TaxesApi.md#find_tax) | **GET** /taxes/{code} | Retrieve a Tax
*LagoAPI::TaxesApi* | [**update_tax**](docs/TaxesApi.md#update_tax) | **PUT** /taxes/{code} | Update a tax
*LagoAPI::WalletsApi* | [**create_wallet**](docs/WalletsApi.md#create_wallet) | **POST** /wallets | Create a wallet
*LagoAPI::WalletsApi* | [**create_wallet_transaction**](docs/WalletsApi.md#create_wallet_transaction) | **POST** /wallet_transactions | Top up a wallet
*LagoAPI::WalletsApi* | [**destroy_wallet**](docs/WalletsApi.md#destroy_wallet) | **DELETE** /wallets/{lago_id} | Terminate a wallet
*LagoAPI::WalletsApi* | [**find_all_wallet_transactions**](docs/WalletsApi.md#find_all_wallet_transactions) | **GET** /wallets/{lago_id}/wallet_transactions | List all wallet transactions
*LagoAPI::WalletsApi* | [**find_all_wallets**](docs/WalletsApi.md#find_all_wallets) | **GET** /wallets | List all wallets
*LagoAPI::WalletsApi* | [**find_wallet**](docs/WalletsApi.md#find_wallet) | **GET** /wallets/{lago_id} | Retrieve a wallet
*LagoAPI::WalletsApi* | [**update_wallet**](docs/WalletsApi.md#update_wallet) | **PUT** /wallets/{lago_id} | Update a wallet
*LagoAPI::WebhookEndpointsApi* | [**create_webhook_endpoint**](docs/WebhookEndpointsApi.md#create_webhook_endpoint) | **POST** /webhook_endpoints | Create a webhook_endpoint
*LagoAPI::WebhookEndpointsApi* | [**destroy_webhook_endpoint**](docs/WebhookEndpointsApi.md#destroy_webhook_endpoint) | **DELETE** /webhook_endpoints/{lago_id} | Delete a webhook endpoint
*LagoAPI::WebhookEndpointsApi* | [**find_all_webhook_endpoints**](docs/WebhookEndpointsApi.md#find_all_webhook_endpoints) | **GET** /webhook_endpoints | List all webhook endpoints
*LagoAPI::WebhookEndpointsApi* | [**find_webhook_endpoint**](docs/WebhookEndpointsApi.md#find_webhook_endpoint) | **GET** /webhook_endpoints/{lago_id} | Retrieve a webhook endpoint
*LagoAPI::WebhookEndpointsApi* | [**update_webhook_endpoint**](docs/WebhookEndpointsApi.md#update_webhook_endpoint) | **PUT** /webhook_endpoints/{lago_id} | Update a webhook endpoint
*LagoAPI::WebhooksApi* | [**fetch_public_key**](docs/WebhooksApi.md#fetch_public_key) | **GET** /webhooks/public_key | Retrieve webhook public key


## Documentation for Models

 - [LagoAPI::AddOn](docs/AddOn.md)
 - [LagoAPI::AddOnBaseInput](docs/AddOnBaseInput.md)
 - [LagoAPI::AddOnCreateInput](docs/AddOnCreateInput.md)
 - [LagoAPI::AddOnCreateInputAddOn](docs/AddOnCreateInputAddOn.md)
 - [LagoAPI::AddOnObject](docs/AddOnObject.md)
 - [LagoAPI::AddOnUpdateInput](docs/AddOnUpdateInput.md)
 - [LagoAPI::AddOnsPaginated](docs/AddOnsPaginated.md)
 - [LagoAPI::ApiErrorBadRequest](docs/ApiErrorBadRequest.md)
 - [LagoAPI::ApiErrorForbidden](docs/ApiErrorForbidden.md)
 - [LagoAPI::ApiErrorNotAllowed](docs/ApiErrorNotAllowed.md)
 - [LagoAPI::ApiErrorNotFound](docs/ApiErrorNotFound.md)
 - [LagoAPI::ApiErrorUnauthorized](docs/ApiErrorUnauthorized.md)
 - [LagoAPI::ApiErrorUnprocessableEntity](docs/ApiErrorUnprocessableEntity.md)
 - [LagoAPI::AppliedCoupon](docs/AppliedCoupon.md)
 - [LagoAPI::AppliedCouponInput](docs/AppliedCouponInput.md)
 - [LagoAPI::AppliedCouponInputAppliedCoupon](docs/AppliedCouponInputAppliedCoupon.md)
 - [LagoAPI::AppliedCouponObject](docs/AppliedCouponObject.md)
 - [LagoAPI::AppliedCouponObjectExtended](docs/AppliedCouponObjectExtended.md)
 - [LagoAPI::AppliedCouponsPaginated](docs/AppliedCouponsPaginated.md)
 - [LagoAPI::BaseAppliedTax](docs/BaseAppliedTax.md)
 - [LagoAPI::BillableMetric](docs/BillableMetric.md)
 - [LagoAPI::BillableMetricBaseInput](docs/BillableMetricBaseInput.md)
 - [LagoAPI::BillableMetricCreateInput](docs/BillableMetricCreateInput.md)
 - [LagoAPI::BillableMetricCreateInputBillableMetric](docs/BillableMetricCreateInputBillableMetric.md)
 - [LagoAPI::BillableMetricGroup](docs/BillableMetricGroup.md)
 - [LagoAPI::BillableMetricGroupValuesInner](docs/BillableMetricGroupValuesInner.md)
 - [LagoAPI::BillableMetricGroupValuesInnerOneOf](docs/BillableMetricGroupValuesInnerOneOf.md)
 - [LagoAPI::BillableMetricObject](docs/BillableMetricObject.md)
 - [LagoAPI::BillableMetricUpdateInput](docs/BillableMetricUpdateInput.md)
 - [LagoAPI::BillableMetricsPaginated](docs/BillableMetricsPaginated.md)
 - [LagoAPI::ChargeObject](docs/ChargeObject.md)
 - [LagoAPI::ChargeObjectProperties](docs/ChargeObjectProperties.md)
 - [LagoAPI::ChargeProperties](docs/ChargeProperties.md)
 - [LagoAPI::ChargePropertiesGraduatedPercentageRangesInner](docs/ChargePropertiesGraduatedPercentageRangesInner.md)
 - [LagoAPI::ChargePropertiesGraduatedRangesInner](docs/ChargePropertiesGraduatedRangesInner.md)
 - [LagoAPI::ChargePropertiesVolumeRangesInner](docs/ChargePropertiesVolumeRangesInner.md)
 - [LagoAPI::Country](docs/Country.md)
 - [LagoAPI::Coupon](docs/Coupon.md)
 - [LagoAPI::CouponBaseInput](docs/CouponBaseInput.md)
 - [LagoAPI::CouponBaseInputAppliesTo](docs/CouponBaseInputAppliesTo.md)
 - [LagoAPI::CouponCreateInput](docs/CouponCreateInput.md)
 - [LagoAPI::CouponCreateInputCoupon](docs/CouponCreateInputCoupon.md)
 - [LagoAPI::CouponObject](docs/CouponObject.md)
 - [LagoAPI::CouponUpdateInput](docs/CouponUpdateInput.md)
 - [LagoAPI::CouponsPaginated](docs/CouponsPaginated.md)
 - [LagoAPI::CreditNote](docs/CreditNote.md)
 - [LagoAPI::CreditNoteAppliedTaxObject](docs/CreditNoteAppliedTaxObject.md)
 - [LagoAPI::CreditNoteCreateInput](docs/CreditNoteCreateInput.md)
 - [LagoAPI::CreditNoteCreateInputCreditNote](docs/CreditNoteCreateInputCreditNote.md)
 - [LagoAPI::CreditNoteEstimateInput](docs/CreditNoteEstimateInput.md)
 - [LagoAPI::CreditNoteEstimateInputCreditNote](docs/CreditNoteEstimateInputCreditNote.md)
 - [LagoAPI::CreditNoteEstimateInputCreditNoteItemsInner](docs/CreditNoteEstimateInputCreditNoteItemsInner.md)
 - [LagoAPI::CreditNoteEstimated](docs/CreditNoteEstimated.md)
 - [LagoAPI::CreditNoteEstimatedEstimatedCreditNote](docs/CreditNoteEstimatedEstimatedCreditNote.md)
 - [LagoAPI::CreditNoteEstimatedEstimatedCreditNoteAppliedTaxesInner](docs/CreditNoteEstimatedEstimatedCreditNoteAppliedTaxesInner.md)
 - [LagoAPI::CreditNoteEstimatedEstimatedCreditNoteItemsInner](docs/CreditNoteEstimatedEstimatedCreditNoteItemsInner.md)
 - [LagoAPI::CreditNoteItemObject](docs/CreditNoteItemObject.md)
 - [LagoAPI::CreditNoteItemObjectFee](docs/CreditNoteItemObjectFee.md)
 - [LagoAPI::CreditNoteObject](docs/CreditNoteObject.md)
 - [LagoAPI::CreditNoteUpdateInput](docs/CreditNoteUpdateInput.md)
 - [LagoAPI::CreditNoteUpdateInputCreditNote](docs/CreditNoteUpdateInputCreditNote.md)
 - [LagoAPI::CreditNotes](docs/CreditNotes.md)
 - [LagoAPI::CreditObject](docs/CreditObject.md)
 - [LagoAPI::CreditObjectInvoice](docs/CreditObjectInvoice.md)
 - [LagoAPI::CreditObjectItem](docs/CreditObjectItem.md)
 - [LagoAPI::Currency](docs/Currency.md)
 - [LagoAPI::Customer](docs/Customer.md)
 - [LagoAPI::CustomerBillingConfiguration](docs/CustomerBillingConfiguration.md)
 - [LagoAPI::CustomerChargeUsageObject](docs/CustomerChargeUsageObject.md)
 - [LagoAPI::CustomerChargeUsageObjectBillableMetric](docs/CustomerChargeUsageObjectBillableMetric.md)
 - [LagoAPI::CustomerChargeUsageObjectCharge](docs/CustomerChargeUsageObjectCharge.md)
 - [LagoAPI::CustomerChargeUsageObjectGroupsInner](docs/CustomerChargeUsageObjectGroupsInner.md)
 - [LagoAPI::CustomerCreateInput](docs/CustomerCreateInput.md)
 - [LagoAPI::CustomerCreateInputCustomer](docs/CustomerCreateInputCustomer.md)
 - [LagoAPI::CustomerCreateInputCustomerMetadataInner](docs/CustomerCreateInputCustomerMetadataInner.md)
 - [LagoAPI::CustomerMetadata](docs/CustomerMetadata.md)
 - [LagoAPI::CustomerObject](docs/CustomerObject.md)
 - [LagoAPI::CustomerObjectExtended](docs/CustomerObjectExtended.md)
 - [LagoAPI::CustomerPastUsage](docs/CustomerPastUsage.md)
 - [LagoAPI::CustomerUsage](docs/CustomerUsage.md)
 - [LagoAPI::CustomerUsageObject](docs/CustomerUsageObject.md)
 - [LagoAPI::CustomersPaginated](docs/CustomersPaginated.md)
 - [LagoAPI::Event](docs/Event.md)
 - [LagoAPI::EventBatchInput](docs/EventBatchInput.md)
 - [LagoAPI::EventBatchInputEvent](docs/EventBatchInputEvent.md)
 - [LagoAPI::EventBatchInputEventProperties](docs/EventBatchInputEventProperties.md)
 - [LagoAPI::EventEstimateFeesInput](docs/EventEstimateFeesInput.md)
 - [LagoAPI::EventEstimateFeesInputEvent](docs/EventEstimateFeesInputEvent.md)
 - [LagoAPI::EventInput](docs/EventInput.md)
 - [LagoAPI::EventInputEvent](docs/EventInputEvent.md)
 - [LagoAPI::EventInputEventTimestamp](docs/EventInputEventTimestamp.md)
 - [LagoAPI::EventObject](docs/EventObject.md)
 - [LagoAPI::EventObjectProperties](docs/EventObjectProperties.md)
 - [LagoAPI::Fee](docs/Fee.md)
 - [LagoAPI::FeeAppliedTaxObject](docs/FeeAppliedTaxObject.md)
 - [LagoAPI::FeeObject](docs/FeeObject.md)
 - [LagoAPI::FeeObjectItem](docs/FeeObjectItem.md)
 - [LagoAPI::FeeUpdateInput](docs/FeeUpdateInput.md)
 - [LagoAPI::FeeUpdateInputFee](docs/FeeUpdateInputFee.md)
 - [LagoAPI::Fees](docs/Fees.md)
 - [LagoAPI::FeesPaginated](docs/FeesPaginated.md)
 - [LagoAPI::GetCustomerPortalUrl200Response](docs/GetCustomerPortalUrl200Response.md)
 - [LagoAPI::GetCustomerPortalUrl200ResponseCustomer](docs/GetCustomerPortalUrl200ResponseCustomer.md)
 - [LagoAPI::GroupObject](docs/GroupObject.md)
 - [LagoAPI::GroupPropertiesObject](docs/GroupPropertiesObject.md)
 - [LagoAPI::GroupPropertiesObjectValues](docs/GroupPropertiesObjectValues.md)
 - [LagoAPI::GroupsPaginated](docs/GroupsPaginated.md)
 - [LagoAPI::Invoice](docs/Invoice.md)
 - [LagoAPI::InvoiceAppliedTaxObject](docs/InvoiceAppliedTaxObject.md)
 - [LagoAPI::InvoiceMetadataObject](docs/InvoiceMetadataObject.md)
 - [LagoAPI::InvoiceObject](docs/InvoiceObject.md)
 - [LagoAPI::InvoiceObjectCustomer](docs/InvoiceObjectCustomer.md)
 - [LagoAPI::InvoiceObjectExtended](docs/InvoiceObjectExtended.md)
 - [LagoAPI::InvoiceOneOffCreateInput](docs/InvoiceOneOffCreateInput.md)
 - [LagoAPI::InvoiceOneOffCreateInputInvoice](docs/InvoiceOneOffCreateInputInvoice.md)
 - [LagoAPI::InvoiceOneOffCreateInputInvoiceFeesInner](docs/InvoiceOneOffCreateInputInvoiceFeesInner.md)
 - [LagoAPI::InvoiceUpdateInput](docs/InvoiceUpdateInput.md)
 - [LagoAPI::InvoiceUpdateInputInvoice](docs/InvoiceUpdateInputInvoice.md)
 - [LagoAPI::InvoiceUpdateInputInvoiceMetadataInner](docs/InvoiceUpdateInputInvoiceMetadataInner.md)
 - [LagoAPI::InvoicesPaginated](docs/InvoicesPaginated.md)
 - [LagoAPI::Organization](docs/Organization.md)
 - [LagoAPI::OrganizationBillingConfiguration](docs/OrganizationBillingConfiguration.md)
 - [LagoAPI::OrganizationObject](docs/OrganizationObject.md)
 - [LagoAPI::OrganizationUpdateInput](docs/OrganizationUpdateInput.md)
 - [LagoAPI::OrganizationUpdateInputOrganization](docs/OrganizationUpdateInputOrganization.md)
 - [LagoAPI::PaginationMeta](docs/PaginationMeta.md)
 - [LagoAPI::Plan](docs/Plan.md)
 - [LagoAPI::PlanCreateInput](docs/PlanCreateInput.md)
 - [LagoAPI::PlanCreateInputPlan](docs/PlanCreateInputPlan.md)
 - [LagoAPI::PlanCreateInputPlanChargesInner](docs/PlanCreateInputPlanChargesInner.md)
 - [LagoAPI::PlanCreateInputPlanChargesInnerGroupPropertiesInner](docs/PlanCreateInputPlanChargesInnerGroupPropertiesInner.md)
 - [LagoAPI::PlanObject](docs/PlanObject.md)
 - [LagoAPI::PlanOverridesObject](docs/PlanOverridesObject.md)
 - [LagoAPI::PlanOverridesObjectChargesInner](docs/PlanOverridesObjectChargesInner.md)
 - [LagoAPI::PlanUpdateInput](docs/PlanUpdateInput.md)
 - [LagoAPI::PlanUpdateInputPlan](docs/PlanUpdateInputPlan.md)
 - [LagoAPI::PlanUpdateInputPlanChargesInner](docs/PlanUpdateInputPlanChargesInner.md)
 - [LagoAPI::PlansPaginated](docs/PlansPaginated.md)
 - [LagoAPI::Subscription](docs/Subscription.md)
 - [LagoAPI::SubscriptionCreateInput](docs/SubscriptionCreateInput.md)
 - [LagoAPI::SubscriptionCreateInputSubscription](docs/SubscriptionCreateInputSubscription.md)
 - [LagoAPI::SubscriptionObject](docs/SubscriptionObject.md)
 - [LagoAPI::SubscriptionObjectExtended](docs/SubscriptionObjectExtended.md)
 - [LagoAPI::SubscriptionUpdateInput](docs/SubscriptionUpdateInput.md)
 - [LagoAPI::SubscriptionUpdateInputSubscription](docs/SubscriptionUpdateInputSubscription.md)
 - [LagoAPI::SubscriptionsPaginated](docs/SubscriptionsPaginated.md)
 - [LagoAPI::Tax](docs/Tax.md)
 - [LagoAPI::TaxBaseInput](docs/TaxBaseInput.md)
 - [LagoAPI::TaxCreateInput](docs/TaxCreateInput.md)
 - [LagoAPI::TaxCreateInputTax](docs/TaxCreateInputTax.md)
 - [LagoAPI::TaxObject](docs/TaxObject.md)
 - [LagoAPI::TaxUpdateInput](docs/TaxUpdateInput.md)
 - [LagoAPI::TaxesPaginated](docs/TaxesPaginated.md)
 - [LagoAPI::Timezone](docs/Timezone.md)
 - [LagoAPI::Wallet](docs/Wallet.md)
 - [LagoAPI::WalletCreateInput](docs/WalletCreateInput.md)
 - [LagoAPI::WalletCreateInputWallet](docs/WalletCreateInputWallet.md)
 - [LagoAPI::WalletObject](docs/WalletObject.md)
 - [LagoAPI::WalletTransactionCreateInput](docs/WalletTransactionCreateInput.md)
 - [LagoAPI::WalletTransactionCreateInputWalletTransaction](docs/WalletTransactionCreateInputWalletTransaction.md)
 - [LagoAPI::WalletTransactionObject](docs/WalletTransactionObject.md)
 - [LagoAPI::WalletTransactions](docs/WalletTransactions.md)
 - [LagoAPI::WalletTransactionsPaginated](docs/WalletTransactionsPaginated.md)
 - [LagoAPI::WalletUpdateInput](docs/WalletUpdateInput.md)
 - [LagoAPI::WalletUpdateInputWallet](docs/WalletUpdateInputWallet.md)
 - [LagoAPI::WalletsPaginated](docs/WalletsPaginated.md)
 - [LagoAPI::WebhookEndpoint](docs/WebhookEndpoint.md)
 - [LagoAPI::WebhookEndpointCreateInput](docs/WebhookEndpointCreateInput.md)
 - [LagoAPI::WebhookEndpointCreateInputWebhookEndpoint](docs/WebhookEndpointCreateInputWebhookEndpoint.md)
 - [LagoAPI::WebhookEndpointObject](docs/WebhookEndpointObject.md)
 - [LagoAPI::WebhookEndpointUpdateInput](docs/WebhookEndpointUpdateInput.md)
 - [LagoAPI::WebhookEndpointsPaginated](docs/WebhookEndpointsPaginated.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### bearerAuth

- **Type**: Bearer authentication

