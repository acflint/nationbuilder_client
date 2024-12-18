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
  class SignupReadOnlyAttributes
    # Email marked as bounced
    attr_accessor :email1_is_bouncing

    # Email marked as bounced
    attr_accessor :email2_is_bouncing

    # Email marked as bounced
    attr_accessor :email3_is_bouncing

    # Email marked as bounced
    attr_accessor :email4_is_bouncing

    # Signup's full name.
    attr_accessor :full_name

    # Is the signup a control panel user
    attr_accessor :is_cpu

    # The signup is a donor.
    attr_accessor :is_donor

    # Last time the note was updated.
    attr_accessor :note_updated_at

    # The last time the priority level changed.
    attr_accessor :priority_level_changed_at

    # HTML formatted version of the signup's profile contents.
    attr_accessor :profile_content_html

    # When the signups support level changed.
    attr_accessor :support_level_changed_at

    attr_accessor :updated_at

    attr_accessor :created_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email1_is_bouncing' => :'email1_is_bouncing',
        :'email2_is_bouncing' => :'email2_is_bouncing',
        :'email3_is_bouncing' => :'email3_is_bouncing',
        :'email4_is_bouncing' => :'email4_is_bouncing',
        :'full_name' => :'full_name',
        :'is_cpu' => :'is_cpu',
        :'is_donor' => :'is_donor',
        :'note_updated_at' => :'note_updated_at',
        :'priority_level_changed_at' => :'priority_level_changed_at',
        :'profile_content_html' => :'profile_content_html',
        :'support_level_changed_at' => :'support_level_changed_at',
        :'updated_at' => :'updated_at',
        :'created_at' => :'created_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email1_is_bouncing' => :'Boolean',
        :'email2_is_bouncing' => :'Boolean',
        :'email3_is_bouncing' => :'Boolean',
        :'email4_is_bouncing' => :'Boolean',
        :'full_name' => :'String',
        :'is_cpu' => :'Boolean',
        :'is_donor' => :'Boolean',
        :'note_updated_at' => :'String',
        :'priority_level_changed_at' => :'String',
        :'profile_content_html' => :'String',
        :'support_level_changed_at' => :'String',
        :'updated_at' => :'String',
        :'created_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'email1_is_bouncing',
        :'email2_is_bouncing',
        :'email3_is_bouncing',
        :'email4_is_bouncing',
        :'full_name',
        :'is_cpu',
        :'is_donor',
        :'note_updated_at',
        :'priority_level_changed_at',
        :'profile_content_html',
        :'support_level_changed_at',
        :'updated_at',
        :'created_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NationbuilderClient::SignupReadOnlyAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NationbuilderClient::SignupReadOnlyAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email1_is_bouncing')
        self.email1_is_bouncing = attributes[:'email1_is_bouncing']
      end

      if attributes.key?(:'email2_is_bouncing')
        self.email2_is_bouncing = attributes[:'email2_is_bouncing']
      end

      if attributes.key?(:'email3_is_bouncing')
        self.email3_is_bouncing = attributes[:'email3_is_bouncing']
      end

      if attributes.key?(:'email4_is_bouncing')
        self.email4_is_bouncing = attributes[:'email4_is_bouncing']
      end

      if attributes.key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.key?(:'is_cpu')
        self.is_cpu = attributes[:'is_cpu']
      end

      if attributes.key?(:'is_donor')
        self.is_donor = attributes[:'is_donor']
      end

      if attributes.key?(:'note_updated_at')
        self.note_updated_at = attributes[:'note_updated_at']
      end

      if attributes.key?(:'priority_level_changed_at')
        self.priority_level_changed_at = attributes[:'priority_level_changed_at']
      end

      if attributes.key?(:'profile_content_html')
        self.profile_content_html = attributes[:'profile_content_html']
      end

      if attributes.key?(:'support_level_changed_at')
        self.support_level_changed_at = attributes[:'support_level_changed_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email1_is_bouncing == o.email1_is_bouncing &&
          email2_is_bouncing == o.email2_is_bouncing &&
          email3_is_bouncing == o.email3_is_bouncing &&
          email4_is_bouncing == o.email4_is_bouncing &&
          full_name == o.full_name &&
          is_cpu == o.is_cpu &&
          is_donor == o.is_donor &&
          note_updated_at == o.note_updated_at &&
          priority_level_changed_at == o.priority_level_changed_at &&
          profile_content_html == o.profile_content_html &&
          support_level_changed_at == o.support_level_changed_at &&
          updated_at == o.updated_at &&
          created_at == o.created_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email1_is_bouncing, email2_is_bouncing, email3_is_bouncing, email4_is_bouncing, full_name, is_cpu, is_donor, note_updated_at, priority_level_changed_at, profile_content_html, support_level_changed_at, updated_at, created_at].hash
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
