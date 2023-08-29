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

# Unit tests for LagoAPI::PlansApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlansApi' do
  before do
    # run before each test
    @api_instance = LagoAPI::PlansApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlansApi' do
    it 'should create an instance of PlansApi' do
      expect(@api_instance).to be_instance_of(LagoAPI::PlansApi)
    end
  end

  # unit tests for create_plan
  # Create a plan
  # This endpoint creates a plan with subscription and usage-based charges. It supports flexible billing cadence (in-advance or in-arrears) and allows for both recurring and metered charges.
  # @param plan_create_input Plan payload
  # @param [Hash] opts the optional parameters
  # @return [Plan]
  describe 'create_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for destroy_plan
  # Delete a plan
  # This endpoint deletes a specific plan. Note that this plan could be associated with active subscriptions.
  # @param code The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance.
  # @param [Hash] opts the optional parameters
  # @return [Plan]
  describe 'destroy_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for find_all_plans
  # List all plans
  # This endpoint retrieves all existing plans.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number.
  # @option opts [Integer] :per_page Number of records per page.
  # @return [PlansPaginated]
  describe 'find_all_plans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for find_plan
  # Retrieve a plan
  # This endpoint retrieves a specific plan.
  # @param code The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance.
  # @param [Hash] opts the optional parameters
  # @return [Plan]
  describe 'find_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_plan
  # Update a plan
  # This endpoint updates a specific plan with subscription and usage-based charges. It supports flexible billing cadence (in-advance or in-arrears) and allows for both recurring and metered charges.
  # @param code The code of the plan. It serves as a unique identifier associated with a particular plan. The code is typically used for internal or system-level identification purposes, like assigning a subscription, for instance.
  # @param plan_update_input Plan payload
  # @param [Hash] opts the optional parameters
  # @return [Plan]
  describe 'update_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
