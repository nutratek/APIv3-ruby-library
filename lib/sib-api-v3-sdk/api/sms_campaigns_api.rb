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
  class SMSCampaignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an SMS campaign
    # @param create_sms_campaign Values to create an SMS Campaign
    # @param [Hash] opts the optional parameters
    # @return [CreateModel]
    def create_sms_campaign(create_sms_campaign, opts = {})
      data, _status_code, _headers = create_sms_campaign_with_http_info(create_sms_campaign, opts)
      data
    end

    # Creates an SMS campaign
    # @param create_sms_campaign Values to create an SMS Campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateModel, Fixnum, Hash)>] CreateModel data, response status code and response headers
    def create_sms_campaign_with_http_info(create_sms_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.create_sms_campaign ...'
      end
      # verify the required parameter 'create_sms_campaign' is set
      if @api_client.config.client_side_validation && create_sms_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'create_sms_campaign' when calling SMSCampaignsApi.create_sms_campaign"
      end
      # resource path
      local_var_path = '/smsCampaigns'

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
      post_body = @api_client.object_to_http_body(create_sms_campaign)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#create_sms_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an SMS campaign
    # @param campaign_id id of the SMS campaign
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_sms_campaign(campaign_id, opts = {})
      delete_sms_campaign_with_http_info(campaign_id, opts)
      nil
    end

    # Delete an SMS campaign
    # @param campaign_id id of the SMS campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_sms_campaign_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.delete_sms_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.delete_sms_campaign"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
        @api_client.config.logger.debug "API called: SMSCampaignsApi#delete_sms_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an SMS campaign
    # @param campaign_id id of the SMS campaign
    # @param [Hash] opts the optional parameters
    # @return [GetSmsCampaign]
    def get_sms_campaign(campaign_id, opts = {})
      data, _status_code, _headers = get_sms_campaign_with_http_info(campaign_id, opts)
      data
    end

    # Get an SMS campaign
    # @param campaign_id id of the SMS campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSmsCampaign, Fixnum, Hash)>] GetSmsCampaign data, response status code and response headers
    def get_sms_campaign_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.get_sms_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.get_sms_campaign"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
        :return_type => 'GetSmsCampaign')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#get_sms_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the information for all your created SMS campaigns
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of campaign.
    # @option opts [DateTime] :start_date Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
    # @option opts [DateTime] :end_date Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
    # @option opts [Integer] :limit Number limitation for the result returned (default to 500)
    # @option opts [Integer] :offset Beginning point in the list to retrieve from. (default to 0)
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation (default to desc)
    # @return [GetSmsCampaigns]
    def get_sms_campaigns(opts = {})
      data, _status_code, _headers = get_sms_campaigns_with_http_info(opts)
      data
    end

    # Returns the information for all your created SMS campaigns
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of campaign.
    # @option opts [DateTime] :start_date Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
    # @option opts [DateTime] :end_date Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
    # @option opts [Integer] :limit Number limitation for the result returned
    # @option opts [Integer] :offset Beginning point in the list to retrieve from.
    # @option opts [String] :sort Sort the results in the ascending/descending order of record creation
    # @return [Array<(GetSmsCampaigns, Fixnum, Hash)>] GetSmsCampaigns data, response status code and response headers
    def get_sms_campaigns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.get_sms_campaigns ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['suspended', 'archive', 'sent', 'queued', 'draft', 'inProcess'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of suspended, archive, sent, queued, draft, inProcess'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SMSCampaignsApi.get_sms_campaigns, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && opts[:'sort'] && !['asc', 'desc'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/smsCampaigns'

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
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
        :return_type => 'GetSmsCampaigns')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#get_sms_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Export an SMS campaign's recipients
    # It returns the background process ID which on completion calls the notify URL that you have set in the input.
    # @param campaign_id id of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [RequestSmsRecipientExport] :recipient_export Values to send for a recipient export request
    # @return [CreatedProcessId]
    def request_sms_recipient_export(campaign_id, opts = {})
      data, _status_code, _headers = request_sms_recipient_export_with_http_info(campaign_id, opts)
      data
    end

    # Export an SMS campaign&#39;s recipients
    # It returns the background process ID which on completion calls the notify URL that you have set in the input.
    # @param campaign_id id of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [RequestSmsRecipientExport] :recipient_export Values to send for a recipient export request
    # @return [Array<(CreatedProcessId, Fixnum, Hash)>] CreatedProcessId data, response status code and response headers
    def request_sms_recipient_export_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.request_sms_recipient_export ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.request_sms_recipient_export"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}/exportRecipients'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'recipient_export'])
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreatedProcessId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#request_sms_recipient_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send your SMS campaign immediately
    # @param campaign_id id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_sms_campaign_now(campaign_id, opts = {})
      send_sms_campaign_now_with_http_info(campaign_id, opts)
      nil
    end

    # Send your SMS campaign immediately
    # @param campaign_id id of the campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_sms_campaign_now_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.send_sms_campaign_now ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.send_sms_campaign_now"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}/sendNow'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#send_sms_campaign_now\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send an SMS campaign's report
    # Send report of Sent and Archived campaign, to the specified email addresses, with respective data and a pdf attachment in detail.
    # @param campaign_id id of the campaign
    # @param send_report Values for send a report
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_sms_report(campaign_id, send_report, opts = {})
      send_sms_report_with_http_info(campaign_id, send_report, opts)
      nil
    end

    # Send an SMS campaign&#39;s report
    # Send report of Sent and Archived campaign, to the specified email addresses, with respective data and a pdf attachment in detail.
    # @param campaign_id id of the campaign
    # @param send_report Values for send a report
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_sms_report_with_http_info(campaign_id, send_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.send_sms_report ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.send_sms_report"
      end
      # verify the required parameter 'send_report' is set
      if @api_client.config.client_side_validation && send_report.nil?
        fail ArgumentError, "Missing the required parameter 'send_report' when calling SMSCampaignsApi.send_sms_report"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}/sendReport'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(send_report)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#send_sms_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send a test SMS campaign
    # @param campaign_id Id of the SMS campaign
    # @param phone_number Mobile number of the recipient with the country code. This number must belong to one of your contacts in SendinBlue account and must not be blacklisted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_test_sms(campaign_id, phone_number, opts = {})
      send_test_sms_with_http_info(campaign_id, phone_number, opts)
      nil
    end

    # Send a test SMS campaign
    # @param campaign_id Id of the SMS campaign
    # @param phone_number Mobile number of the recipient with the country code. This number must belong to one of your contacts in SendinBlue account and must not be blacklisted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_test_sms_with_http_info(campaign_id, phone_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.send_test_sms ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.send_test_sms"
      end
      # verify the required parameter 'phone_number' is set
      if @api_client.config.client_side_validation && phone_number.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number' when calling SMSCampaignsApi.send_test_sms"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}/sendTest'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(phone_number)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#send_test_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an SMS campaign
    # @param campaign_id id of the SMS campaign
    # @param update_sms_campaign Values to update an SMS Campaign
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_sms_campaign(campaign_id, update_sms_campaign, opts = {})
      update_sms_campaign_with_http_info(campaign_id, update_sms_campaign, opts)
      nil
    end

    # Update an SMS campaign
    # @param campaign_id id of the SMS campaign
    # @param update_sms_campaign Values to update an SMS Campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_sms_campaign_with_http_info(campaign_id, update_sms_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.update_sms_campaign ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.update_sms_campaign"
      end
      # verify the required parameter 'update_sms_campaign' is set
      if @api_client.config.client_side_validation && update_sms_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'update_sms_campaign' when calling SMSCampaignsApi.update_sms_campaign"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(update_sms_campaign)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#update_sms_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a campaign's status
    # @param campaign_id id of the campaign
    # @param status Status of the campaign.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_sms_campaign_status(campaign_id, status, opts = {})
      update_sms_campaign_status_with_http_info(campaign_id, status, opts)
      nil
    end

    # Update a campaign&#39;s status
    # @param campaign_id id of the campaign
    # @param status Status of the campaign.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_sms_campaign_status_with_http_info(campaign_id, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSCampaignsApi.update_sms_campaign_status ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling SMSCampaignsApi.update_sms_campaign_status"
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling SMSCampaignsApi.update_sms_campaign_status"
      end
      # resource path
      local_var_path = '/smsCampaigns/{campaignId}/status'.sub('{' + 'campaignId' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(status)
      auth_names = ['api-key', 'partner-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSCampaignsApi#update_sms_campaign_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
