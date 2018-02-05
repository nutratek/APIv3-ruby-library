=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SibApiV3Sdk

  class GetEmailCampaign
    # ID of the campaign
    attr_accessor :id

    # Name of the campaign
    attr_accessor :name

    # Subject of the campaign
    attr_accessor :subject

    # Type of campaign
    attr_accessor :type

    # Status of the campaign
    attr_accessor :status

    # UTC date-time on which campaign is scheduled (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :scheduled_at

    # Retrieved the status of test email sending. (true=Test email has been sent  false=Test email has not been sent)
    attr_accessor :test_sent

    # Header of the campaign
    attr_accessor :header

    # Footer of the campaign
    attr_accessor :footer

    attr_accessor :sender

    # Email defined as the \"Reply to\" of the campaign
    attr_accessor :reply_to

    # Customisation of the \"to\" field of the campaign
    attr_accessor :to_field

    # HTML content of the campaign
    attr_accessor :html_content

    # Link to share the campaign on social medias
    attr_accessor :share_link

    # Tag of the campaign
    attr_accessor :tag

    # Creation UTC date-time of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :created_at

    # UTC date-time of last modification of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :modified_at

    # Status of inline image. inlineImageActivation = false means image can’t be embedded, & inlineImageActivation = true means image can be embedded, in the email.
    attr_accessor :inline_image_activation

    # Status of mirror links in campaign. mirrorActive = false means mirror links are deactivated, & mirrorActive = true means mirror links are activated, in the campaign
    attr_accessor :mirror_active

    # FOR TRIGGER ONLY ! Type of trigger campaign.recurring = false means contact can receive the same Trigger campaign only once, & recurring = true means contact can receive the same Trigger campaign several times
    attr_accessor :recurring

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
        :'id' => :'id',
        :'name' => :'name',
        :'subject' => :'subject',
        :'type' => :'type',
        :'status' => :'status',
        :'scheduled_at' => :'scheduledAt',
        :'test_sent' => :'testSent',
        :'header' => :'header',
        :'footer' => :'footer',
        :'sender' => :'sender',
        :'reply_to' => :'replyTo',
        :'to_field' => :'toField',
        :'html_content' => :'htmlContent',
        :'share_link' => :'shareLink',
        :'tag' => :'tag',
        :'created_at' => :'createdAt',
        :'modified_at' => :'modifiedAt',
        :'inline_image_activation' => :'inlineImageActivation',
        :'mirror_active' => :'mirrorActive',
        :'recurring' => :'recurring'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'subject' => :'String',
        :'type' => :'String',
        :'status' => :'String',
        :'scheduled_at' => :'DateTime',
        :'test_sent' => :'BOOLEAN',
        :'header' => :'String',
        :'footer' => :'String',
        :'sender' => :'GetExtendedCampaignOverviewSender',
        :'reply_to' => :'String',
        :'to_field' => :'String',
        :'html_content' => :'String',
        :'share_link' => :'String',
        :'tag' => :'String',
        :'created_at' => :'DateTime',
        :'modified_at' => :'DateTime',
        :'inline_image_activation' => :'BOOLEAN',
        :'mirror_active' => :'BOOLEAN',
        :'recurring' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'scheduledAt')
        self.scheduled_at = attributes[:'scheduledAt']
      end

      if attributes.has_key?(:'testSent')
        self.test_sent = attributes[:'testSent']
      end

      if attributes.has_key?(:'header')
        self.header = attributes[:'header']
      end

      if attributes.has_key?(:'footer')
        self.footer = attributes[:'footer']
      end

      if attributes.has_key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.has_key?(:'replyTo')
        self.reply_to = attributes[:'replyTo']
      end

      if attributes.has_key?(:'toField')
        self.to_field = attributes[:'toField']
      end

      if attributes.has_key?(:'htmlContent')
        self.html_content = attributes[:'htmlContent']
      end

      if attributes.has_key?(:'shareLink')
        self.share_link = attributes[:'shareLink']
      end

      if attributes.has_key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'modifiedAt')
        self.modified_at = attributes[:'modifiedAt']
      end

      if attributes.has_key?(:'inlineImageActivation')
        self.inline_image_activation = attributes[:'inlineImageActivation']
      end

      if attributes.has_key?(:'mirrorActive')
        self.mirror_active = attributes[:'mirrorActive']
      end

      if attributes.has_key?(:'recurring')
        self.recurring = attributes[:'recurring']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @subject.nil?
        invalid_properties.push("invalid value for 'subject', subject cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if @test_sent.nil?
        invalid_properties.push("invalid value for 'test_sent', test_sent cannot be nil.")
      end

      if @header.nil?
        invalid_properties.push("invalid value for 'header', header cannot be nil.")
      end

      if @footer.nil?
        invalid_properties.push("invalid value for 'footer', footer cannot be nil.")
      end

      if @sender.nil?
        invalid_properties.push("invalid value for 'sender', sender cannot be nil.")
      end

      if @reply_to.nil?
        invalid_properties.push("invalid value for 'reply_to', reply_to cannot be nil.")
      end

      if @to_field.nil?
        invalid_properties.push("invalid value for 'to_field', to_field cannot be nil.")
      end

      if @html_content.nil?
        invalid_properties.push("invalid value for 'html_content', html_content cannot be nil.")
      end

      if @tag.nil?
        invalid_properties.push("invalid value for 'tag', tag cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for 'created_at', created_at cannot be nil.")
      end

      if @modified_at.nil?
        invalid_properties.push("invalid value for 'modified_at', modified_at cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      return false if @subject.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["classic", "trigger"])
      return false unless type_validator.valid?(@type)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["draft", "sent", "archive", "queued", "suspended", "in_process"])
      return false unless status_validator.valid?(@status)
      return false if @test_sent.nil?
      return false if @header.nil?
      return false if @footer.nil?
      return false if @sender.nil?
      return false if @reply_to.nil?
      return false if @to_field.nil?
      return false if @html_content.nil?
      return false if @tag.nil?
      return false if @created_at.nil?
      return false if @modified_at.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["classic", "trigger"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["draft", "sent", "archive", "queued", "suspended", "in_process"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          subject == o.subject &&
          type == o.type &&
          status == o.status &&
          scheduled_at == o.scheduled_at &&
          test_sent == o.test_sent &&
          header == o.header &&
          footer == o.footer &&
          sender == o.sender &&
          reply_to == o.reply_to &&
          to_field == o.to_field &&
          html_content == o.html_content &&
          share_link == o.share_link &&
          tag == o.tag &&
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          inline_image_activation == o.inline_image_activation &&
          mirror_active == o.mirror_active &&
          recurring == o.recurring
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, subject, type, status, scheduled_at, test_sent, header, footer, sender, reply_to, to_field, html_content, share_link, tag, created_at, modified_at, inline_image_activation, mirror_active, recurring].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SibApiV3Sdk.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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
