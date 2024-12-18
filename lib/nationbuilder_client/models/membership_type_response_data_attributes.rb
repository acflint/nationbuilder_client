=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module NationbuilderClient
  class MembershipTypeResponseDataAttributes
    # Short explanation of the membership type.
    attr_accessor :description

    # Amount of time to warn a signup ahead of their membership expiration.
    attr_accessor :expiration_warning_num_time_periods

    # The unit of time used for expiration_warning_num_time_periods.
    attr_accessor :expiration_warning_time_period_type

    # Grace period to allow a signup to renew their membership after it expires.
    attr_accessor :grace_period_num_time_periods

    # Unit of time to measure grace period.
    attr_accessor :grace_period_time_period_type

    # The ID of the page to renew the membership.
    attr_accessor :page_id

    # Membership type name.
    attr_accessor :name

    attr_accessor :created_at

    attr_accessor :updated_at

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
        :'description' => :'description',
        :'expiration_warning_num_time_periods' => :'expiration_warning_num_time_periods',
        :'expiration_warning_time_period_type' => :'expiration_warning_time_period_type',
        :'grace_period_num_time_periods' => :'grace_period_num_time_periods',
        :'grace_period_time_period_type' => :'grace_period_time_period_type',
        :'page_id' => :'page_id',
        :'name' => :'name',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'description' => :'String',
        :'expiration_warning_num_time_periods' => :'Integer',
        :'expiration_warning_time_period_type' => :'String',
        :'grace_period_num_time_periods' => :'Integer',
        :'grace_period_time_period_type' => :'String',
        :'page_id' => :'String',
        :'name' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'expiration_warning_num_time_periods',
        :'expiration_warning_time_period_type',
        :'grace_period_num_time_periods',
        :'grace_period_time_period_type',
        :'page_id',
        :'name',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'MembershipTypeReadOnlyAttributes',
      :'MembershipTypeReadWriteAttributes'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NationbuilderClient::MembershipTypeResponseDataAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NationbuilderClient::MembershipTypeResponseDataAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'expiration_warning_num_time_periods')
        self.expiration_warning_num_time_periods = attributes[:'expiration_warning_num_time_periods']
      else
        self.expiration_warning_num_time_periods = 7
      end

      if attributes.key?(:'expiration_warning_time_period_type')
        self.expiration_warning_time_period_type = attributes[:'expiration_warning_time_period_type']
      else
        self.expiration_warning_time_period_type = 'days'
      end

      if attributes.key?(:'grace_period_num_time_periods')
        self.grace_period_num_time_periods = attributes[:'grace_period_num_time_periods']
      else
        self.grace_period_num_time_periods = 7
      end

      if attributes.key?(:'grace_period_time_period_type')
        self.grace_period_time_period_type = attributes[:'grace_period_time_period_type']
      else
        self.grace_period_time_period_type = 'days'
      end

      if attributes.key?(:'page_id')
        self.page_id = attributes[:'page_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      expiration_warning_time_period_type_validator = EnumAttributeValidator.new('String', ["days", "weeks", "months", "years"])
      return false unless expiration_warning_time_period_type_validator.valid?(@expiration_warning_time_period_type)
      grace_period_time_period_type_validator = EnumAttributeValidator.new('String', ["days", "weeks", "months", "years"])
      return false unless grace_period_time_period_type_validator.valid?(@grace_period_time_period_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiration_warning_time_period_type Object to be assigned
    def expiration_warning_time_period_type=(expiration_warning_time_period_type)
      validator = EnumAttributeValidator.new('String', ["days", "weeks", "months", "years"])
      unless validator.valid?(expiration_warning_time_period_type)
        fail ArgumentError, "invalid value for \"expiration_warning_time_period_type\", must be one of #{validator.allowable_values}."
      end
      @expiration_warning_time_period_type = expiration_warning_time_period_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grace_period_time_period_type Object to be assigned
    def grace_period_time_period_type=(grace_period_time_period_type)
      validator = EnumAttributeValidator.new('String', ["days", "weeks", "months", "years"])
      unless validator.valid?(grace_period_time_period_type)
        fail ArgumentError, "invalid value for \"grace_period_time_period_type\", must be one of #{validator.allowable_values}."
      end
      @grace_period_time_period_type = grace_period_time_period_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          expiration_warning_num_time_periods == o.expiration_warning_num_time_periods &&
          expiration_warning_time_period_type == o.expiration_warning_time_period_type &&
          grace_period_num_time_periods == o.grace_period_num_time_periods &&
          grace_period_time_period_type == o.grace_period_time_period_type &&
          page_id == o.page_id &&
          name == o.name &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [description, expiration_warning_num_time_periods, expiration_warning_time_period_type, grace_period_num_time_periods, grace_period_time_period_type, page_id, name, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = NationbuilderClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
