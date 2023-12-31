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

# Unit tests for LagoAPI::InvoiceUpdateInputInvoice
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LagoAPI::InvoiceUpdateInputInvoice do
  let(:instance) { LagoAPI::InvoiceUpdateInputInvoice.new }

  describe 'test an instance of InvoiceUpdateInputInvoice' do
    it 'should create an instance of InvoiceUpdateInputInvoice' do
      expect(instance).to be_instance_of(LagoAPI::InvoiceUpdateInputInvoice)
    end
  end
  describe 'test attribute "payment_status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["pending", "succeeded", "failed"])
      # validator.allowable_values.each do |value|
      #   expect { instance.payment_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
