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

# Unit tests for OpenapiClient::CreateWebhookEndpoint200ResponseWebhookEndpoint
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::CreateWebhookEndpoint200ResponseWebhookEndpoint do
  let(:instance) { OpenapiClient::CreateWebhookEndpoint200ResponseWebhookEndpoint.new }

  describe 'test an instance of CreateWebhookEndpoint200ResponseWebhookEndpoint' do
    it 'should create an instance of CreateWebhookEndpoint200ResponseWebhookEndpoint' do
      expect(instance).to be_instance_of(OpenapiClient::CreateWebhookEndpoint200ResponseWebhookEndpoint)
    end
  end
  describe 'test attribute "lago_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "lago_organization_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "webhook_url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "signature_algo"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["jwt", "hmac"])
      # validator.allowable_values.each do |value|
      #   expect { instance.signature_algo = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
