=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.51.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module LagoAPI
  class AddOnObject
    # Unique identifier of the add-on, created by Lago.
    attr_accessor :lago_id

    # The name of the add-on.
    attr_accessor :name

    # Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name.
    attr_accessor :invoice_display_name

    # Unique code used to identify the add-on.
    attr_accessor :code

    # The cost of the add-on in cents, excluding any applicable taxes, that is billed to a customer. By creating a one-off invoice, you will be able to override this value.
    attr_accessor :amount_cents

    attr_accessor :amount_currency

    # The description of the add-on.
    attr_accessor :description

    # The date and time when the add-on was created. It is expressed in UTC format according to the ISO 8601 datetime standard. This field provides the timestamp for the exact moment when the add-on was initially created.
    attr_accessor :created_at

    # All taxes applied to the add-on.
    attr_accessor :taxes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'lago_id' => :'lago_id',
        :'name' => :'name',
        :'invoice_display_name' => :'invoice_display_name',
        :'code' => :'code',
        :'amount_cents' => :'amount_cents',
        :'amount_currency' => :'amount_currency',
        :'description' => :'description',
        :'created_at' => :'created_at',
        :'taxes' => :'taxes'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'lago_id' => :'String',
        :'name' => :'String',
        :'invoice_display_name' => :'String',
        :'code' => :'String',
        :'amount_cents' => :'Integer',
        :'amount_currency' => :'Currency',
        :'description' => :'String',
        :'created_at' => :'Time',
        :'taxes' => :'Array<TaxObject>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::AddOnObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::AddOnObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lago_id')
        self.lago_id = attributes[:'lago_id']
      else
        self.lago_id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'invoice_display_name')
        self.invoice_display_name = attributes[:'invoice_display_name']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      else
        self.code = nil
      end

      if attributes.key?(:'amount_cents')
        self.amount_cents = attributes[:'amount_cents']
      else
        self.amount_cents = nil
      end

      if attributes.key?(:'amount_currency')
        self.amount_currency = attributes[:'amount_currency']
      else
        self.amount_currency = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @lago_id.nil?
        invalid_properties.push('invalid value for "lago_id", lago_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @amount_cents.nil?
        invalid_properties.push('invalid value for "amount_cents", amount_cents cannot be nil.')
      end

      if @amount_currency.nil?
        invalid_properties.push('invalid value for "amount_currency", amount_currency cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @lago_id.nil?
      return false if @name.nil?
      return false if @code.nil?
      return false if @amount_cents.nil?
      return false if @amount_currency.nil?
      return false if @created_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_id == o.lago_id &&
          name == o.name &&
          invoice_display_name == o.invoice_display_name &&
          code == o.code &&
          amount_cents == o.amount_cents &&
          amount_currency == o.amount_currency &&
          description == o.description &&
          created_at == o.created_at &&
          taxes == o.taxes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lago_id, name, invoice_display_name, code, amount_cents, amount_currency, description, created_at, taxes].hash
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
        klass = LagoAPI.const_get(type)
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
