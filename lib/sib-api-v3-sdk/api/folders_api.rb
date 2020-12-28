=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module SibApiV3Sdk
  class FoldersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a folder
    # @param create_folder Name of the folder
    # @param [Hash] opts the optional parameters
    # @return [CreateModel]
    def create_folder(create_folder, opts = {})
      data, _status_code, _headers = create_folder_with_http_info(create_folder, opts)
      data
    end

    # Create a folder
    # @param create_folder Name of the folder
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateModel, Fixnum, Hash)>] CreateModel data, response status code and response headers
    def create_folder_with_http_info(create_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.create_folder ...'
      end
      # verify the required parameter 'create_folder' is set
      if @api_client.config.client_side_validation && create_folder.nil?
        fail ArgumentError, "Missing the required parameter 'create_folder' when calling FoldersApi.create_folder"
      end
      # resource path
      local_var_path = '/contacts/folders'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_folder)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a folder (and all its lists)
    # @param folder_id Id of the folder
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_folder(folder_id, opts = {})
      delete_folder_with_http_info(folder_id, opts)
      nil
    end

    # Delete a folder (and all its lists)
    # @param folder_id Id of the folder
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_folder_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.delete_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.delete_folder"
      end
      # resource path
      local_var_path = '/contacts/folders/{folderId}'.sub('{' + 'folderId' + '}', folder_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a folder's details
    # @param folder_id id of the folder
    # @param [Hash] opts the optional parameters
    # @return [GetFolder]
    def get_folder(folder_id, opts = {})
      data, _status_code, _headers = get_folder_with_http_info(folder_id, opts)
      data
    end

    # Returns a folder&#39;s details
    # @param folder_id id of the folder
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetFolder, Fixnum, Hash)>] GetFolder data, response status code and response headers
    def get_folder_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.get_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.get_folder"
      end
      # resource path
      local_var_path = '/contacts/folders/{folderId}'.sub('{' + 'folderId' + '}', folder_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetFolder')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#get_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get lists in a folder
    # @param folder_id Id of the folder
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page (default to 10)
    # @option opts [Integer] :offset Index of the first document of the page (default to 0)
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation (default to desc)
    # @return [GetFolderLists]
    def get_folder_lists(folder_id, opts = {})
      data, _status_code, _headers = get_folder_lists_with_http_info(folder_id, opts)
      data
    end

    # Get lists in a folder
    # @param folder_id Id of the folder
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation
    # @return [Array<(GetFolderLists, Fixnum, Hash)>] GetFolderLists data, response status code and response headers
    def get_folder_lists_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.get_folder_lists ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.get_folder_lists"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 50
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FoldersApi.get_folder_lists, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/contacts/folders/{folderId}/lists'.sub('{' + 'folderId' + '}', folder_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetFolderLists')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#get_folder_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all folders
    # @param limit Number of documents per page
    # @param offset Index of the first document of the page
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation (default to desc)
    # @return [GetFolders]
    def get_folders(limit, offset, opts = {})
      data, _status_code, _headers = get_folders_with_http_info(limit, offset, opts)
      data
    end

    # Get all folders
    # @param limit Number of documents per page
    # @param offset Index of the first document of the page
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation
    # @return [Array<(GetFolders, Fixnum, Hash)>] GetFolders data, response status code and response headers
    def get_folders_with_http_info(limit, offset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.get_folders ...'
      end
      # verify the required parameter 'limit' is set
      if @api_client.config.client_side_validation && limit.nil?
        fail ArgumentError, "Missing the required parameter 'limit' when calling FoldersApi.get_folders"
      end
      if @api_client.config.client_side_validation && limit > 50
        fail ArgumentError, 'invalid value for "limit" when calling FoldersApi.get_folders, must be smaller than or equal to 50.'
      end

      # verify the required parameter 'offset' is set
      if @api_client.config.client_side_validation && offset.nil?
        fail ArgumentError, "Missing the required parameter 'offset' when calling FoldersApi.get_folders"
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/contacts/folders'

      # query parameters
      query_params = {}
      query_params[:'limit'] = limit
      query_params[:'offset'] = offset
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetFolders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#get_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a folder
    # @param folder_id Id of the folder
    # @param update_folder Name of the folder
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_folder(folder_id, update_folder, opts = {})
      update_folder_with_http_info(folder_id, update_folder, opts)
      nil
    end

    # Update a folder
    # @param folder_id Id of the folder
    # @param update_folder Name of the folder
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_folder_with_http_info(folder_id, update_folder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.update_folder ...'
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling FoldersApi.update_folder"
      end
      # verify the required parameter 'update_folder' is set
      if @api_client.config.client_side_validation && update_folder.nil?
        fail ArgumentError, "Missing the required parameter 'update_folder' when calling FoldersApi.update_folder"
      end
      # resource path
      local_var_path = '/contacts/folders/{folderId}'.sub('{' + 'folderId' + '}', folder_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_folder)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#update_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
