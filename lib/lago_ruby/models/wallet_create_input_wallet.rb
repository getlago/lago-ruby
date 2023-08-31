=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.46.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module LagoAPI
  class WalletCreateInputWallet
    # The name of the wallet.
    attr_accessor :name

    # The rate of conversion between credits and the amount in the specified currency. It indicates the ratio or factor used to convert credits into the corresponding monetary value in the currency of the transaction.
    attr_accessor :rate_amount

    attr_accessor :currency

    # The number of paid credits. Required only if there is no granted credits.
    attr_accessor :paid_credits

    # The number of free granted credits. Required only if there is no paid credits.
    attr_accessor :granted_credits

    # The customer external unique identifier (provided by your own application)
    attr_accessor :external_customer_id

    # The date and time that determines when the wallet will expire. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC).
    attr_accessor :expiration_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'rate_amount' => :'rate_amount',
        :'currency' => :'currency',
        :'paid_credits' => :'paid_credits',
        :'granted_credits' => :'granted_credits',
        :'external_customer_id' => :'external_customer_id',
        :'expiration_at' => :'expiration_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'rate_amount' => :'String',
        :'currency' => :'Currency',
        :'paid_credits' => :'String',
        :'granted_credits' => :'String',
        :'external_customer_id' => :'String',
        :'expiration_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'paid_credits',
        :'granted_credits',
        :'expiration_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::WalletCreateInputWallet` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::WalletCreateInputWallet`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rate_amount')
        self.rate_amount = attributes[:'rate_amount']
      else
        self.rate_amount = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'paid_credits')
        self.paid_credits = attributes[:'paid_credits']
      end

      if attributes.key?(:'granted_credits')
        self.granted_credits = attributes[:'granted_credits']
      end

      if attributes.key?(:'external_customer_id')
        self.external_customer_id = attributes[:'external_customer_id']
      else
        self.external_customer_id = nil
      end

      if attributes.key?(:'expiration_at')
        self.expiration_at = attributes[:'expiration_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @rate_amount.nil?
        invalid_properties.push('invalid value for "rate_amount", rate_amount cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if @rate_amount !~ pattern
        invalid_properties.push("invalid value for \"rate_amount\", must conform to the pattern #{pattern}.")
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@paid_credits.nil? && @paid_credits !~ pattern
        invalid_properties.push("invalid value for \"paid_credits\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@granted_credits.nil? && @granted_credits !~ pattern
        invalid_properties.push("invalid value for \"granted_credits\", must conform to the pattern #{pattern}.")
      end

      if @external_customer_id.nil?
        invalid_properties.push('invalid value for "external_customer_id", external_customer_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @rate_amount.nil?
      return false if @rate_amount !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if @currency.nil?
      return false if !@paid_credits.nil? && @paid_credits !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if !@granted_credits.nil? && @granted_credits !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if @external_customer_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] rate_amount Value to be assigned
    def rate_amount=(rate_amount)
      if rate_amount.nil?
        fail ArgumentError, 'rate_amount cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if rate_amount !~ pattern
        fail ArgumentError, "invalid value for \"rate_amount\", must conform to the pattern #{pattern}."
      end

      @rate_amount = rate_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] paid_credits Value to be assigned
    def paid_credits=(paid_credits)
      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !paid_credits.nil? && paid_credits !~ pattern
        fail ArgumentError, "invalid value for \"paid_credits\", must conform to the pattern #{pattern}."
      end

      @paid_credits = paid_credits
    end

    # Custom attribute writer method with validation
    # @param [Object] granted_credits Value to be assigned
    def granted_credits=(granted_credits)
      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !granted_credits.nil? && granted_credits !~ pattern
        fail ArgumentError, "invalid value for \"granted_credits\", must conform to the pattern #{pattern}."
      end

      @granted_credits = granted_credits
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          rate_amount == o.rate_amount &&
          currency == o.currency &&
          paid_credits == o.paid_credits &&
          granted_credits == o.granted_credits &&
          external_customer_id == o.external_customer_id &&
          expiration_at == o.expiration_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, rate_amount, currency, paid_credits, granted_credits, external_customer_id, expiration_at].hash
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
