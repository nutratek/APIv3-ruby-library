=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SibApiV3Sdk::CreateWebhook
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SibApiV3Sdk::CreateWebhook do
  let(:instance) { SibApiV3Sdk::CreateWebhook.new }

  describe 'test an instance of CreateWebhook' do
    it 'should create an instance of CreateWebhook' do
      expect(instance).to be_instance_of(SibApiV3Sdk::CreateWebhook)
    end
  end
  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "events"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["sent", "hardBounce", "softBounce", "blocked", "spam", "delivered", "request", "click", "invalid", "deferred", "opened", "uniqueOpened", "unsubscribed", "listAddition", "contactUpdated", "contactDeleted"])
      # validator.allowable_values.each do |value|
      #   expect { instance.events = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["transactional", "marketing"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end
