=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module SibApiV3Sdk
  class CRMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set custom user_agent if explicitly passed in api
    # default will still remain Swagger-Codegen/#{VERSION}/ruby
    def setUserAgent(user_agent)
      @user_agent = user_agent
      if user_agent.is_a?(String) && user_agent.downcase.start_with?('sendinblue_')
        @api_client.default_headers['User-Agent'] = @user_agent
      end
    end

    
    # Get file details.
    # @param id File id to get file data.
    # @param [Hash] opts the optional parameters
    # @return [FileData]
    def crm_files_id_data_get(id, opts = {})
      data, _status_code, _headers = crm_files_id_data_get_with_http_info(id, opts)
      data
    end

    # Get file details
    # @param id File id to get file data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileData, Fixnum, Hash)>] FileData data, response status code and response headers
    def crm_files_id_data_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_files_id_data_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_files_id_data_get"
      end
      # resource path
      local_var_path = '/crm/files/{id}/data'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'FileData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_files_id_data_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a file
    # @param id File id to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_files_id_delete(id, opts = {})
      crm_files_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a file
    # @param id File id to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_files_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_files_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_files_id_delete"
      end
      # resource path
      local_var_path = '/crm/files/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CRMApi#crm_files_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Download a file
    # @param id File id to download.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_files_id_get(id, opts = {})
      crm_files_id_get_with_http_info(id, opts)
      nil
    end

    # Download a file
    # @param id File id to download.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_files_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_files_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_files_id_get"
      end
      # resource path
      local_var_path = '/crm/files/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_files_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Upload a file
    # @param file File data to create a file.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :deals_ids Deal ids linked to a file
    # @return [FileData]
    def crm_files_post(file, opts = {})
      data, _status_code, _headers = crm_files_post_with_http_info(file, opts)
      data
    end

    # Upload a file
    # @param file File data to create a file.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :deals_ids Deal ids linked to a file
    # @return [Array<(FileData, Fixnum, Hash)>] FileData data, response status code and response headers
    def crm_files_post_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_files_post ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling CRMApi.crm_files_post"
      end
      # resource path
      local_var_path = '/crm/files'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['file'] = file
      form_params['dealsIds'] = @api_client.build_collection_param(opts[:'deals_ids'], :csv) if !opts[:'deals_ids'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FileData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_files_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a note
    # @param id Note ID to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_notes_id_delete(id, opts = {})
      crm_notes_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a note
    # @param id Note ID to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_notes_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_notes_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_notes_id_delete"
      end
      # resource path
      local_var_path = '/crm/notes/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CRMApi#crm_notes_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a note
    # @param id Note ID to get
    # @param [Hash] opts the optional parameters
    # @return [Note]
    def crm_notes_id_get(id, opts = {})
      data, _status_code, _headers = crm_notes_id_get_with_http_info(id, opts)
      data
    end

    # Get a note
    # @param id Note ID to get
    # @param [Hash] opts the optional parameters
    # @return [Array<(Note, Fixnum, Hash)>] Note data, response status code and response headers
    def crm_notes_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_notes_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_notes_id_get"
      end
      # resource path
      local_var_path = '/crm/notes/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Note')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_notes_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a note
    # @param id Note ID to update
    # @param body Note data to update a note
    # @param [Hash] opts the optional parameters
    # @return [Note]
    def crm_notes_id_patch(id, body, opts = {})
      data, _status_code, _headers = crm_notes_id_patch_with_http_info(id, body, opts)
      data
    end

    # Update a note
    # @param id Note ID to update
    # @param body Note data to update a note
    # @param [Hash] opts the optional parameters
    # @return [Array<(Note, Fixnum, Hash)>] Note data, response status code and response headers
    def crm_notes_id_patch_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_notes_id_patch ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_notes_id_patch"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CRMApi.crm_notes_id_patch"
      end
      # resource path
      local_var_path = '/crm/notes/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Note')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_notes_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a note
    # @param body Note data to create a note.
    # @param [Hash] opts the optional parameters
    # @return [Note]
    def crm_notes_post(body, opts = {})
      data, _status_code, _headers = crm_notes_post_with_http_info(body, opts)
      data
    end

    # Create a note
    # @param body Note data to create a note.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Note, Fixnum, Hash)>] Note data, response status code and response headers
    def crm_notes_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_notes_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CRMApi.crm_notes_post"
      end
      # resource path
      local_var_path = '/crm/notes'

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Note')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_notes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a task
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_tasks_id_delete(id, opts = {})
      crm_tasks_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a task
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def crm_tasks_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_tasks_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_tasks_id_delete"
      end
      # resource path
      local_var_path = '/crm/tasks/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CRMApi#crm_tasks_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a task
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Task]
    def crm_tasks_id_get(id, opts = {})
      data, _status_code, _headers = crm_tasks_id_get_with_http_info(id, opts)
      data
    end

    # Get a task
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Task, Fixnum, Hash)>] Task data, response status code and response headers
    def crm_tasks_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_tasks_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_tasks_id_get"
      end
      # resource path
      local_var_path = '/crm/tasks/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Task')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_tasks_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a task
    # @param id 
    # @param body Updated task details.
    # @param [Hash] opts the optional parameters
    # @return [Task]
    def crm_tasks_id_patch(id, body, opts = {})
      data, _status_code, _headers = crm_tasks_id_patch_with_http_info(id, body, opts)
      data
    end

    # Update a task
    # @param id 
    # @param body Updated task details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Task, Fixnum, Hash)>] Task data, response status code and response headers
    def crm_tasks_id_patch_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_tasks_id_patch ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CRMApi.crm_tasks_id_patch"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CRMApi.crm_tasks_id_patch"
      end
      # resource path
      local_var_path = '/crm/tasks/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Task')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_tasks_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a task
    # @param body Task name.
    # @param [Hash] opts the optional parameters
    # @return [Task]
    def crm_tasks_post(body, opts = {})
      data, _status_code, _headers = crm_tasks_post_with_http_info(body, opts)
      data
    end

    # Create a task
    # @param body Task name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Task, Fixnum, Hash)>] Task data, response status code and response headers
    def crm_tasks_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_tasks_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CRMApi.crm_tasks_post"
      end
      # resource path
      local_var_path = '/crm/tasks'

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Task')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_tasks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all task types
    # @param [Hash] opts the optional parameters
    # @return [TaskTypes]
    def crm_tasktypes_get(opts = {})
      data, _status_code, _headers = crm_tasktypes_get_with_http_info(opts)
      data
    end

    # Get all task types
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskTypes, Fixnum, Hash)>] TaskTypes data, response status code and response headers
    def crm_tasktypes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CRMApi.crm_tasktypes_get ...'
      end
      # resource path
      local_var_path = '/crm/tasktypes'

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
        :return_type => 'TaskTypes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CRMApi#crm_tasktypes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end