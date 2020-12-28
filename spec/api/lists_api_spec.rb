=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for SibApiV3Sdk::ListsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ListsApi' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::ListsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListsApi' do
    it 'should create an instance of ListsApi' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::ListsApi)
    end
  end

  # unit tests for add_contact_to_list
  # Add existing contacts to a list
  # @param list_id Id of the list
  # @param contact_emails Emails addresses OR IDs of the contacts
  # @param [Hash] opts the optional parameters
  # @return [PostContactInfo]
  describe 'add_contact_to_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_list
  # Create a list
  # @param create_list Values to create a list
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_list
  # Delete a list
  # @param list_id Id of the list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contacts_from_list
  # Get contacts in a list
  # @param list_id Id of the list
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :modified_since Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation
  # @return [GetContacts]
  describe 'get_contacts_from_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folder_lists
  # Get lists in a folder
  # @param folder_id Id of the folder
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation
  # @return [GetFolderLists]
  describe 'get_folder_lists test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_list
  # Get a list&#39;s details
  # @param list_id Id of the list
  # @param [Hash] opts the optional parameters
  # @return [GetExtendedList]
  describe 'get_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lists
  # Get all the lists
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document of the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation
  # @return [GetLists]
  describe 'get_lists test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_contact_from_list
  # Delete a contact from a list
  # @param list_id Id of the list
  # @param contact_emails Emails addresses OR IDs of the contacts
  # @param [Hash] opts the optional parameters
  # @return [PostContactInfo]
  describe 'remove_contact_from_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_list
  # Update a list
  # @param list_id Id of the list
  # @param update_list Values to update a list
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
