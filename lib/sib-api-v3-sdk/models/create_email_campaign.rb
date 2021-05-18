=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module SibApiV3Sdk
  class CreateEmailCampaign
    # Tag of the campaign
    attr_accessor :tag

    attr_accessor :sender

    # Name of the campaign
    attr_accessor :name

    # Mandatory if htmlUrl and templateId are empty. Body of the message (HTML)
    attr_accessor :html_content

    # Mandatory if htmlContent and templateId are empty. Url to the message (HTML)
    attr_accessor :html_url

    # Mandatory if htmlContent and htmlUrl are empty. Id of the transactional email template with status 'active'. Used to copy only its content fetched from htmlContent/htmlUrl to an email campaign for RSS feature.
    attr_accessor :template_id

    # Sending UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. If sendAtBestTime is set to true, your campaign will be sent according to the date passed (ignoring the time part).
    attr_accessor :scheduled_at

    # Subject of the campaign. Mandatory if abTesting is false. Ignored if abTesting is true.
    attr_accessor :subject

    # Email on which the campaign recipients will be able to reply to
    attr_accessor :reply_to

    # To personalize the «To» Field. If you want to include the first name and last name of your recipient, add {FNAME} {LNAME}. These contact attributes must already exist in your SendinBlue account. If input parameter 'params' used please use {{contact.FNAME}} {{contact.LNAME}} for personalization
    attr_accessor :to_field

    attr_accessor :recipients

    # Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps
    attr_accessor :attachment_url

    # Use true to embedded the images in your email. Final size of the email should be less than 4MB. Campaigns with embedded images can not be sent to more than 5000 contacts
    attr_accessor :inline_image_activation

    # Use true to enable the mirror link
    attr_accessor :mirror_active

    # Footer of the email campaign
    attr_accessor :footer

    # Header of the email campaign
    attr_accessor :header

    # Customize the utm_campaign value. If this field is empty, the campaign name will be used. Only alphanumeric characters and spaces are allowed
    attr_accessor :utm_campaign

    # Pass the set of attributes to customize the type classic campaign. For example, {\"FNAME\":\"Joe\", \"LNAME\":\"Doe\"}. Only available if 'type' is 'classic'. It's considered only if campaign is in New Template Language format. The New Template Language is dependent on the values of 'subject', 'htmlContent/htmlUrl', 'sender.name' & 'toField'
    attr_accessor :params

    # Set this to true if you want to send your campaign at best time.
    attr_accessor :send_at_best_time

    # Status of A/B Test. abTesting = false means it is disabled, & abTesting = true means it is enabled. 'subjectA', 'subjectB', 'splitRule', 'winnerCriteria' & 'winnerDelay' will be considered when abTesting is set to true. 'subjectA' & 'subjectB' are mandatory together & 'subject' if passed is ignored. Can be set to true only if 'sendAtBestTime' is 'false'. You will be able to set up two subject lines for your campaign and send them to a random sample of your total recipients. Half of the test group will receive version A, and the other half will receive version B
    attr_accessor :ab_testing

    # Subject A of the campaign. Mandatory if abTesting = true. subjectA & subjectB should have unique value
    attr_accessor :subject_a

    # Subject B of the campaign. Mandatory if abTesting = true. subjectA & subjectB should have unique value
    attr_accessor :subject_b

    # Add the size of your test groups. Mandatory if abTesting = true & 'recipients' is passed. We'll send version A and B to a random sample of recipients, and then the winning version to everyone else
    attr_accessor :split_rule

    # Choose the metrics that will determinate the winning version. Mandatory if 'splitRule' >= 1 and < 50. If splitRule = 50, 'winnerCriteria' is ignored if passed
    attr_accessor :winner_criteria

    # Choose the duration of the test in hours. Maximum is 7 days, pass 24*7 = 168 hours. The winning version will be sent at the end of the test. Mandatory if 'splitRule' >= 1 and < 50. If splitRule = 50, 'winnerDelay' is ignored if passed
    attr_accessor :winner_delay

    # Available for dedicated ip clients. Set this to true if you wish to warm up your ip.
    attr_accessor :ip_warmup_enable

    # Mandatory if ipWarmupEnable is set to true. Set an initial quota greater than 1 for warming up your ip. We recommend you set a value of 3000.
    attr_accessor :initial_quota

    # Mandatory if ipWarmupEnable is set to true. Set a percentage increase rate for warming up your ip. We recommend you set the increase rate to 30% per day. If you want to send the same number of emails every day, set the daily increase value to 0%.
    attr_accessor :increase_rate

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tag' => :'tag',
        :'sender' => :'sender',
        :'name' => :'name',
        :'html_content' => :'htmlContent',
        :'html_url' => :'htmlUrl',
        :'template_id' => :'templateId',
        :'scheduled_at' => :'scheduledAt',
        :'subject' => :'subject',
        :'reply_to' => :'replyTo',
        :'to_field' => :'toField',
        :'recipients' => :'recipients',
        :'attachment_url' => :'attachmentUrl',
        :'inline_image_activation' => :'inlineImageActivation',
        :'mirror_active' => :'mirrorActive',
        :'footer' => :'footer',
        :'header' => :'header',
        :'utm_campaign' => :'utmCampaign',
        :'params' => :'params',
        :'send_at_best_time' => :'sendAtBestTime',
        :'ab_testing' => :'abTesting',
        :'subject_a' => :'subjectA',
        :'subject_b' => :'subjectB',
        :'split_rule' => :'splitRule',
        :'winner_criteria' => :'winnerCriteria',
        :'winner_delay' => :'winnerDelay',
        :'ip_warmup_enable' => :'ipWarmupEnable',
        :'initial_quota' => :'initialQuota',
        :'increase_rate' => :'increaseRate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tag' => :'String',
        :'sender' => :'CreateEmailCampaignSender',
        :'name' => :'String',
        :'html_content' => :'String',
        :'html_url' => :'String',
        :'template_id' => :'Integer',
        :'scheduled_at' => :'String',
        :'subject' => :'String',
        :'reply_to' => :'String',
        :'to_field' => :'String',
        :'recipients' => :'CreateEmailCampaignRecipients',
        :'attachment_url' => :'String',
        :'inline_image_activation' => :'Boolean',
        :'mirror_active' => :'Boolean',
        :'footer' => :'String',
        :'header' => :'String',
        :'utm_campaign' => :'String',
        :'params' => :'Object',
        :'send_at_best_time' => :'Boolean',
        :'ab_testing' => :'Boolean',
        :'subject_a' => :'String',
        :'subject_b' => :'String',
        :'split_rule' => :'Integer',
        :'winner_criteria' => :'String',
        :'winner_delay' => :'Integer',
        :'ip_warmup_enable' => :'Boolean',
        :'initial_quota' => :'Integer',
        :'increase_rate' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SibApiV3Sdk::CreateEmailCampaign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SibApiV3Sdk::CreateEmailCampaign`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'html_content')
        self.html_content = attributes[:'html_content']
      end

      if attributes.key?(:'html_url')
        self.html_url = attributes[:'html_url']
      end

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      end

      if attributes.key?(:'scheduled_at')
        self.scheduled_at = attributes[:'scheduled_at']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'reply_to')
        self.reply_to = attributes[:'reply_to']
      end

      if attributes.key?(:'to_field')
        self.to_field = attributes[:'to_field']
      end

      if attributes.key?(:'recipients')
        self.recipients = attributes[:'recipients']
      end

      if attributes.key?(:'attachment_url')
        self.attachment_url = attributes[:'attachment_url']
      end

      if attributes.key?(:'inline_image_activation')
        self.inline_image_activation = attributes[:'inline_image_activation']
      else
        self.inline_image_activation = false
      end

      if attributes.key?(:'mirror_active')
        self.mirror_active = attributes[:'mirror_active']
      end

      if attributes.key?(:'footer')
        self.footer = attributes[:'footer']
      end

      if attributes.key?(:'header')
        self.header = attributes[:'header']
      end

      if attributes.key?(:'utm_campaign')
        self.utm_campaign = attributes[:'utm_campaign']
      end

      if attributes.key?(:'params')
        self.params = attributes[:'params']
      end

      if attributes.key?(:'send_at_best_time')
        self.send_at_best_time = attributes[:'send_at_best_time']
      else
        self.send_at_best_time = false
      end

      if attributes.key?(:'ab_testing')
        self.ab_testing = attributes[:'ab_testing']
      else
        self.ab_testing = false
      end

      if attributes.key?(:'subject_a')
        self.subject_a = attributes[:'subject_a']
      end

      if attributes.key?(:'subject_b')
        self.subject_b = attributes[:'subject_b']
      end

      if attributes.key?(:'split_rule')
        self.split_rule = attributes[:'split_rule']
      end

      if attributes.key?(:'winner_criteria')
        self.winner_criteria = attributes[:'winner_criteria']
      end

      if attributes.key?(:'winner_delay')
        self.winner_delay = attributes[:'winner_delay']
      end

      if attributes.key?(:'ip_warmup_enable')
        self.ip_warmup_enable = attributes[:'ip_warmup_enable']
      else
        self.ip_warmup_enable = false
      end

      if attributes.key?(:'initial_quota')
        self.initial_quota = attributes[:'initial_quota']
      end

      if attributes.key?(:'increase_rate')
        self.increase_rate = attributes[:'increase_rate']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sender.nil?
        invalid_properties.push('invalid value for "sender", sender cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if !@split_rule.nil? && @split_rule > 50
        invalid_properties.push('invalid value for "split_rule", must be smaller than or equal to 50.')
      end

      if !@split_rule.nil? && @split_rule < 1
        invalid_properties.push('invalid value for "split_rule", must be greater than or equal to 1.')
      end

      if !@winner_delay.nil? && @winner_delay > 168
        invalid_properties.push('invalid value for "winner_delay", must be smaller than or equal to 168.')
      end

      if !@winner_delay.nil? && @winner_delay < 1
        invalid_properties.push('invalid value for "winner_delay", must be greater than or equal to 1.')
      end

      if !@increase_rate.nil? && @increase_rate > 100
        invalid_properties.push('invalid value for "increase_rate", must be smaller than or equal to 100.')
      end

      if !@increase_rate.nil? && @increase_rate < 0
        invalid_properties.push('invalid value for "increase_rate", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sender.nil?
      return false if @name.nil?
      return false if !@split_rule.nil? && @split_rule > 50
      return false if !@split_rule.nil? && @split_rule < 1
      winner_criteria_validator = EnumAttributeValidator.new('String', ["open", "click"])
      return false unless winner_criteria_validator.valid?(@winner_criteria)
      return false if !@winner_delay.nil? && @winner_delay > 168
      return false if !@winner_delay.nil? && @winner_delay < 1
      return false if !@increase_rate.nil? && @increase_rate > 100
      return false if !@increase_rate.nil? && @increase_rate < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] split_rule Value to be assigned
    def split_rule=(split_rule)
      if !split_rule.nil? && split_rule > 50
        fail ArgumentError, 'invalid value for "split_rule", must be smaller than or equal to 50.'
      end

      if !split_rule.nil? && split_rule < 1
        fail ArgumentError, 'invalid value for "split_rule", must be greater than or equal to 1.'
      end

      @split_rule = split_rule
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] winner_criteria Object to be assigned
    def winner_criteria=(winner_criteria)
      validator = EnumAttributeValidator.new('String', ["open", "click"])
      unless validator.valid?(winner_criteria)
        fail ArgumentError, "invalid value for \"winner_criteria\", must be one of #{validator.allowable_values}."
      end
      @winner_criteria = winner_criteria
    end

    # Custom attribute writer method with validation
    # @param [Object] winner_delay Value to be assigned
    def winner_delay=(winner_delay)
      if !winner_delay.nil? && winner_delay > 168
        fail ArgumentError, 'invalid value for "winner_delay", must be smaller than or equal to 168.'
      end

      if !winner_delay.nil? && winner_delay < 1
        fail ArgumentError, 'invalid value for "winner_delay", must be greater than or equal to 1.'
      end

      @winner_delay = winner_delay
    end

    # Custom attribute writer method with validation
    # @param [Object] increase_rate Value to be assigned
    def increase_rate=(increase_rate)
      if !increase_rate.nil? && increase_rate > 100
        fail ArgumentError, 'invalid value for "increase_rate", must be smaller than or equal to 100.'
      end

      if !increase_rate.nil? && increase_rate < 0
        fail ArgumentError, 'invalid value for "increase_rate", must be greater than or equal to 0.'
      end

      @increase_rate = increase_rate
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tag == o.tag &&
          sender == o.sender &&
          name == o.name &&
          html_content == o.html_content &&
          html_url == o.html_url &&
          template_id == o.template_id &&
          scheduled_at == o.scheduled_at &&
          subject == o.subject &&
          reply_to == o.reply_to &&
          to_field == o.to_field &&
          recipients == o.recipients &&
          attachment_url == o.attachment_url &&
          inline_image_activation == o.inline_image_activation &&
          mirror_active == o.mirror_active &&
          footer == o.footer &&
          header == o.header &&
          utm_campaign == o.utm_campaign &&
          params == o.params &&
          send_at_best_time == o.send_at_best_time &&
          ab_testing == o.ab_testing &&
          subject_a == o.subject_a &&
          subject_b == o.subject_b &&
          split_rule == o.split_rule &&
          winner_criteria == o.winner_criteria &&
          winner_delay == o.winner_delay &&
          ip_warmup_enable == o.ip_warmup_enable &&
          initial_quota == o.initial_quota &&
          increase_rate == o.increase_rate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tag, sender, name, html_content, html_url, template_id, scheduled_at, subject, reply_to, to_field, recipients, attachment_url, inline_image_activation, mirror_active, footer, header, utm_campaign, params, send_at_best_time, ab_testing, subject_a, subject_b, split_rule, winner_criteria, winner_delay, ip_warmup_enable, initial_quota, increase_rate].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = SibApiV3Sdk.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
