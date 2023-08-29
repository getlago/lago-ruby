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

# Unit tests for LagoAPI::CreditNoteCreateInputCreditNoteItemsInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LagoAPI::CreditNoteCreateInputCreditNoteItemsInner do
  let(:instance) { LagoAPI::CreditNoteCreateInputCreditNoteItemsInner.new }

  describe 'test an instance of CreditNoteCreateInputCreditNoteItemsInner' do
    it 'should create an instance of CreditNoteCreateInputCreditNoteItemsInner' do
      expect(instance).to be_instance_of(LagoAPI::CreditNoteCreateInputCreditNoteItemsInner)
    end
  end
  describe 'test attribute "fee_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "amount_cents"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
