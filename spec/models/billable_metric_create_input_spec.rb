=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.45.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LagoAPI::BillableMetricCreateInput
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LagoAPI::BillableMetricCreateInput do
  let(:instance) { LagoAPI::BillableMetricCreateInput.new }

  describe 'test an instance of BillableMetricCreateInput' do
    it 'should create an instance of BillableMetricCreateInput' do
      expect(instance).to be_instance_of(LagoAPI::BillableMetricCreateInput)
    end
  end
  describe 'test attribute "billable_metric"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
