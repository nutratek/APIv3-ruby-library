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
  class GetExtendedCampaignStats
    # Overall statistics of the campaign
    attr_accessor :global_stats

    # List-wise statistics of the campaign.
    attr_accessor :campaign_stats

    # Number of clicks on mirror link
    attr_accessor :mirror_click

    # Number of remaning emails to send
    attr_accessor :remaining

    # Statistics about the number of clicks for the links
    attr_accessor :links_stats

    attr_accessor :stats_by_domain

    attr_accessor :stats_by_device

    attr_accessor :stats_by_browser

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'global_stats' => :'globalStats',
        :'campaign_stats' => :'campaignStats',
        :'mirror_click' => :'mirrorClick',
        :'remaining' => :'remaining',
        :'links_stats' => :'linksStats',
        :'stats_by_domain' => :'statsByDomain',
        :'stats_by_device' => :'statsByDevice',
        :'stats_by_browser' => :'statsByBrowser'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'global_stats' => :'GetCampaignStats',
        :'campaign_stats' => :'Array<GetCampaignStats>',
        :'mirror_click' => :'Integer',
        :'remaining' => :'Integer',
        :'links_stats' => :'Object',
        :'stats_by_domain' => :'Hash<String, GetCampaignStats>',
        :'stats_by_device' => :'GetStatsByDevice',
        :'stats_by_browser' => :'Hash<String, GetDeviceBrowserStats>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SibApiV3Sdk::GetExtendedCampaignStats` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SibApiV3Sdk::GetExtendedCampaignStats`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'global_stats')
        self.global_stats = attributes[:'global_stats']
      end

      if attributes.key?(:'campaign_stats')
        if (value = attributes[:'campaign_stats']).is_a?(Array)
          self.campaign_stats = value
        end
      end

      if attributes.key?(:'mirror_click')
        self.mirror_click = attributes[:'mirror_click']
      end

      if attributes.key?(:'remaining')
        self.remaining = attributes[:'remaining']
      end

      if attributes.key?(:'links_stats')
        self.links_stats = attributes[:'links_stats']
      end

      if attributes.key?(:'stats_by_domain')
        if (value = attributes[:'stats_by_domain']).is_a?(Hash)
          self.stats_by_domain = value
        end
      end

      if attributes.key?(:'stats_by_device')
        self.stats_by_device = attributes[:'stats_by_device']
      end

      if attributes.key?(:'stats_by_browser')
        if (value = attributes[:'stats_by_browser']).is_a?(Hash)
          self.stats_by_browser = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @global_stats.nil?
        invalid_properties.push('invalid value for "global_stats", global_stats cannot be nil.')
      end

      if @campaign_stats.nil?
        invalid_properties.push('invalid value for "campaign_stats", campaign_stats cannot be nil.')
      end

      if @mirror_click.nil?
        invalid_properties.push('invalid value for "mirror_click", mirror_click cannot be nil.')
      end

      if @remaining.nil?
        invalid_properties.push('invalid value for "remaining", remaining cannot be nil.')
      end

      if @links_stats.nil?
        invalid_properties.push('invalid value for "links_stats", links_stats cannot be nil.')
      end

      if @stats_by_domain.nil?
        invalid_properties.push('invalid value for "stats_by_domain", stats_by_domain cannot be nil.')
      end

      if @stats_by_device.nil?
        invalid_properties.push('invalid value for "stats_by_device", stats_by_device cannot be nil.')
      end

      if @stats_by_browser.nil?
        invalid_properties.push('invalid value for "stats_by_browser", stats_by_browser cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @global_stats.nil?
      return false if @campaign_stats.nil?
      return false if @mirror_click.nil?
      return false if @remaining.nil?
      return false if @links_stats.nil?
      return false if @stats_by_domain.nil?
      return false if @stats_by_device.nil?
      return false if @stats_by_browser.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          global_stats == o.global_stats &&
          campaign_stats == o.campaign_stats &&
          mirror_click == o.mirror_click &&
          remaining == o.remaining &&
          links_stats == o.links_stats &&
          stats_by_domain == o.stats_by_domain &&
          stats_by_device == o.stats_by_device &&
          stats_by_browser == o.stats_by_browser
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [global_stats, campaign_stats, mirror_click, remaining, links_stats, stats_by_domain, stats_by_device, stats_by_browser].hash
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
