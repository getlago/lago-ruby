=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.41.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::SubscriptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriptionsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::SubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriptionsApi' do
    it 'should create an instance of SubscriptionsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::SubscriptionsApi)
    end
  end

  # unit tests for create_subscription
  # Assign a plan to a customer
  # This endpoint assigns a plan to a customer, creating or modifying a subscription. Ideal for initial subscriptions or plan changes (upgrades/downgrades).
  # @param subscription_create_input Subscription payload
  # @param [Hash] opts the optional parameters
  # @return [Subscription]
  describe 'create_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for destroy_subscription
  # Terminate a subscription
  # This endpoint allows you to terminate a subscription.
  # @param external_id External ID of the existing subscription
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status If the field is not defined, Lago will terminate only &#x60;active&#x60; subscriptions. However, if you wish to cancel a &#x60;pending&#x60; subscription, please ensure that you include &#x60;status&#x3D;pending&#x60; in your request.
  # @return [Subscription]
  describe 'destroy_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for find_all_subscriptions
  # List all subscriptions
  # This endpoint retrieves all active subscriptions.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number.
  # @option opts [Integer] :per_page Number of records per page.
  # @option opts [String] :external_customer_id The customer external unique identifier (provided by your own application)
  # @option opts [String] :plan_code The unique code representing the plan to be attached to the customer. This code must correspond to the code property of one of the active plans.
  # @option opts [Array<String>] :status If the field is not defined, Lago will return only &#x60;active&#x60; subscriptions. However, if you wish to fetch subscriptions by different status you can define them in a status[] query param. Available filter values: &#x60;pending&#x60;, &#x60;canceled&#x60;, &#x60;terminated&#x60;, &#x60;active&#x60;.
  # @return [SubscriptionsPaginated]
  describe 'find_all_subscriptions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscription
  # Update a subscription
  # This endpoint allows you to update a subscription.
  # @param external_id External ID of the existing subscription
  # @param subscription_update_input Update an existing subscription
  # @param [Hash] opts the optional parameters
  # @return [Subscription]
  describe 'update_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
