=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'cgi'

module SibApiV3Sdk
  class SendersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new sender
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSender] :sender sender&#39;s name
    # @return [CreateSenderModel]
    def create_sender(opts = {})
      data, _status_code, _headers = create_sender_with_http_info(opts)
      data
    end

    # Create a new sender
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSender] :sender sender&#39;s name
    # @return [Array<(CreateSenderModel, Integer, Hash)>] CreateSenderModel data, response status code and response headers
    def create_sender_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SendersApi.create_sender ...'
      end
      # resource path
      local_var_path = '/senders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'sender'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateSenderModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :operation => :"SendersApi.create_sender",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SendersApi#create_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a sender
    # @param sender_id [Integer] Id of the sender
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_sender(sender_id, opts = {})
      delete_sender_with_http_info(sender_id, opts)
      nil
    end

    # Delete a sender
    # @param sender_id [Integer] Id of the sender
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_sender_with_http_info(sender_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SendersApi.delete_sender ...'
      end
      # verify the required parameter 'sender_id' is set
      if @api_client.config.client_side_validation && sender_id.nil?
        fail ArgumentError, "Missing the required parameter 'sender_id' when calling SendersApi.delete_sender"
      end
      # resource path
      local_var_path = '/senders/{senderId}'.sub('{' + 'senderId' + '}', CGI.escape(sender_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :operation => :"SendersApi.delete_sender",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SendersApi#delete_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all the dedicated IPs for your account
    # @param [Hash] opts the optional parameters
    # @return [GetIps]
    def get_ips(opts = {})
      data, _status_code, _headers = get_ips_with_http_info(opts)
      data
    end

    # Get all the dedicated IPs for your account
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetIps, Integer, Hash)>] GetIps data, response status code and response headers
    def get_ips_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SendersApi.get_ips ...'
      end
      # resource path
      local_var_path = '/senders/ips'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetIps'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :operation => :"SendersApi.get_ips",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SendersApi#get_ips\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all the dedicated IPs for a sender
    # @param sender_id [Integer] Id of the sender
    # @param [Hash] opts the optional parameters
    # @return [GetIpsFromSender]
    def get_ips_from_sender(sender_id, opts = {})
      data, _status_code, _headers = get_ips_from_sender_with_http_info(sender_id, opts)
      data
    end

    # Get all the dedicated IPs for a sender
    # @param sender_id [Integer] Id of the sender
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetIpsFromSender, Integer, Hash)>] GetIpsFromSender data, response status code and response headers
    def get_ips_from_sender_with_http_info(sender_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SendersApi.get_ips_from_sender ...'
      end
      # verify the required parameter 'sender_id' is set
      if @api_client.config.client_side_validation && sender_id.nil?
        fail ArgumentError, "Missing the required parameter 'sender_id' when calling SendersApi.get_ips_from_sender"
      end
      # resource path
      local_var_path = '/senders/{senderId}/ips'.sub('{' + 'senderId' + '}', CGI.escape(sender_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetIpsFromSender'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :operation => :"SendersApi.get_ips_from_sender",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SendersApi#get_ips_from_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of all your senders
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ip Filter your senders for a specific ip (available for dedicated IP usage only)
    # @option opts [String] :domain Filter your senders for a specific domain
    # @return [GetSendersList]
    def get_senders(opts = {})
      data, _status_code, _headers = get_senders_with_http_info(opts)
      data
    end

    # Get the list of all your senders
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ip Filter your senders for a specific ip (available for dedicated IP usage only)
    # @option opts [String] :domain Filter your senders for a specific domain
    # @return [Array<(GetSendersList, Integer, Hash)>] GetSendersList data, response status code and response headers
    def get_senders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SendersApi.get_senders ...'
      end
      # resource path
      local_var_path = '/senders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ip'] = opts[:'ip'] if !opts[:'ip'].nil?
      query_params[:'domain'] = opts[:'domain'] if !opts[:'domain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetSendersList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :operation => :"SendersApi.get_senders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SendersApi#get_senders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a sender
    # @param sender_id [Integer] Id of the sender
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateSender] :sender sender&#39;s name
    # @return [nil]
    def update_sender(sender_id, opts = {})
      update_sender_with_http_info(sender_id, opts)
      nil
    end

    # Update a sender
    # @param sender_id [Integer] Id of the sender
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateSender] :sender sender&#39;s name
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_sender_with_http_info(sender_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SendersApi.update_sender ...'
      end
      # verify the required parameter 'sender_id' is set
      if @api_client.config.client_side_validation && sender_id.nil?
        fail ArgumentError, "Missing the required parameter 'sender_id' when calling SendersApi.update_sender"
      end
      # resource path
      local_var_path = '/senders/{senderId}'.sub('{' + 'senderId' + '}', CGI.escape(sender_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'sender'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :operation => :"SendersApi.update_sender",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SendersApi#update_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
