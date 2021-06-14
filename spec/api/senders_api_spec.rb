=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for SibApiV3Sdk::SendersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SendersApi' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::SendersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SendersApi' do
    it 'should create an instance of SendersApi' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::SendersApi)
    end
  end

  # unit tests for create_sender
  # Create a new sender
  # @param [Hash] opts the optional parameters
  # @option opts [CreateSender] :sender sender&#39;s name
  # @return [CreateSenderModel]
  describe 'create_sender test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_sender
  # Delete a sender
  # @param sender_id Id of the sender
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_sender test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_ips
  # Get all the dedicated IPs for your account
  # @param [Hash] opts the optional parameters
  # @return [GetIps]
  describe 'get_ips test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_ips_from_sender
  # Get all the dedicated IPs for a sender
  # @param sender_id Id of the sender
  # @param [Hash] opts the optional parameters
  # @return [GetIpsFromSender]
  describe 'get_ips_from_sender test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_senders
  # Get the list of all your senders
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ip Filter your senders for a specific ip (available for dedicated IP usage only)
  # @option opts [String] :domain Filter your senders for a specific domain
  # @return [GetSendersList]
  describe 'get_senders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_sender
  # Update a sender
  # @param sender_id Id of the sender
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateSender] :sender sender&#39;s name
  # @return [nil]
  describe 'update_sender test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
