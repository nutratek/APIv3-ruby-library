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

# Unit tests for SibApiV3Sdk::TransactionalSMSApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionalSMSApi' do
  before do
    # run before each test
    @api_instance = SibApiV3Sdk::TransactionalSMSApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionalSMSApi' do
    it 'should create an instance of TransactionalSMSApi' do
      expect(@api_instance).to be_instance_of(SibApiV3Sdk::TransactionalSMSApi)
    end
  end

  # unit tests for get_sms_events
  # Get all your SMS activity (unaggregated events)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
  # @option opts [String] :phone_number Filter the report for a specific phone number
  # @option opts [String] :event Filter the report for specific events
  # @option opts [String] :tags Filter the report for specific tags passed as a serialized urlencoded array
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @return [GetSmsEventReport]
  describe 'get_sms_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transac_aggregated_sms_report
  # Get your SMS activity aggregated over a period of time
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with startDate and endDate
  # @option opts [String] :tag Filter on a tag
  # @return [GetTransacAggregatedSmsReport]
  describe 'get_transac_aggregated_sms_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transac_sms_report
  # Get your SMS activity aggregated per day
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start_date Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  # @option opts [String] :end_date Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
  # @option opts [String] :tag Filter on a tag
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @return [GetTransacSmsReport]
  describe 'get_transac_sms_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_transac_sms
  # Send SMS message to a mobile number
  # @param send_transac_sms Values to send a transactional SMS
  # @param [Hash] opts the optional parameters
  # @return [SendSms]
  describe 'send_transac_sms test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
