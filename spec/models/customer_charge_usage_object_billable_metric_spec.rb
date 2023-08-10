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
require 'date'

# Unit tests for OpenapiClient::CustomerChargeUsageObjectBillableMetric
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::CustomerChargeUsageObjectBillableMetric do
  let(:instance) { OpenapiClient::CustomerChargeUsageObjectBillableMetric.new }

  describe 'test an instance of CustomerChargeUsageObjectBillableMetric' do
    it 'should create an instance of CustomerChargeUsageObjectBillableMetric' do
      expect(instance).to be_instance_of(OpenapiClient::CustomerChargeUsageObjectBillableMetric)
    end
  end
  describe 'test attribute "lago_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "aggregation_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["count_agg", "sum_agg", "max_agg", "unique_count_agg"])
      # validator.allowable_values.each do |value|
      #   expect { instance.aggregation_type = value }.not_to raise_error
      # end
    end
  end

end
