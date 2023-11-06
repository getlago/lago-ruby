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
  class WalletObject
    # Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    attr_accessor :lago_id

    # Unique identifier assigned to the customer within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the customer’s record within the Lago system.
    attr_accessor :lago_customer_id

    # The customer external unique identifier (provided by your own application)
    attr_accessor :external_customer_id

    # The status of the wallet. Possible values are `active` or `terminated`.
    attr_accessor :status

    attr_accessor :currency

    # The name of the wallet.
    attr_accessor :name

    # The rate of conversion between credits and the amount in the specified currency. It indicates the ratio or factor used to convert credits into the corresponding monetary value in the currency of the transaction.
    attr_accessor :rate_amount

    # The current wallet balance expressed in credits.
    attr_accessor :credits_balance

    # The current wallet balance expressed in cents.
    attr_accessor :balance_cents

    # The number of consumed credits.
    attr_accessor :consumed_credits

    # The date of the wallet creation, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC).
    attr_accessor :created_at

    # The date and time that determines when the wallet will expire. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC).
    attr_accessor :expiration_at

    # The date and time of the last balance top-up. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC).
    attr_accessor :last_balance_sync_at

    # The date and time of the last credits consumption. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC).
    attr_accessor :last_consumed_credit_at

    # The date of terminaison of the wallet. It follows the ISO 8601 datetime format and is expressed in Coordinated Universal Time (UTC).
    attr_accessor :terminated_at

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
        :'lago_id' => :'lago_id',
        :'lago_customer_id' => :'lago_customer_id',
        :'external_customer_id' => :'external_customer_id',
        :'status' => :'status',
        :'currency' => :'currency',
        :'name' => :'name',
        :'rate_amount' => :'rate_amount',
        :'credits_balance' => :'credits_balance',
        :'balance_cents' => :'balance_cents',
        :'consumed_credits' => :'consumed_credits',
        :'created_at' => :'created_at',
        :'expiration_at' => :'expiration_at',
        :'last_balance_sync_at' => :'last_balance_sync_at',
        :'last_consumed_credit_at' => :'last_consumed_credit_at',
        :'terminated_at' => :'terminated_at'
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
        :'lago_customer_id' => :'String',
        :'external_customer_id' => :'String',
        :'status' => :'String',
        :'currency' => :'Currency',
        :'name' => :'String',
        :'rate_amount' => :'String',
        :'credits_balance' => :'String',
        :'balance_cents' => :'Integer',
        :'consumed_credits' => :'String',
        :'created_at' => :'Time',
        :'expiration_at' => :'Time',
        :'last_balance_sync_at' => :'Time',
        :'last_consumed_credit_at' => :'Time',
        :'terminated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'expiration_at',
        :'last_balance_sync_at',
        :'last_consumed_credit_at',
        :'terminated_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::WalletObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::WalletObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lago_id')
        self.lago_id = attributes[:'lago_id']
      else
        self.lago_id = nil
      end

      if attributes.key?(:'lago_customer_id')
        self.lago_customer_id = attributes[:'lago_customer_id']
      else
        self.lago_customer_id = nil
      end

      if attributes.key?(:'external_customer_id')
        self.external_customer_id = attributes[:'external_customer_id']
      else
        self.external_customer_id = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rate_amount')
        self.rate_amount = attributes[:'rate_amount']
      else
        self.rate_amount = nil
      end

      if attributes.key?(:'credits_balance')
        self.credits_balance = attributes[:'credits_balance']
      else
        self.credits_balance = nil
      end

      if attributes.key?(:'balance_cents')
        self.balance_cents = attributes[:'balance_cents']
      else
        self.balance_cents = nil
      end

      if attributes.key?(:'consumed_credits')
        self.consumed_credits = attributes[:'consumed_credits']
      else
        self.consumed_credits = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'expiration_at')
        self.expiration_at = attributes[:'expiration_at']
      end

      if attributes.key?(:'last_balance_sync_at')
        self.last_balance_sync_at = attributes[:'last_balance_sync_at']
      end

      if attributes.key?(:'last_consumed_credit_at')
        self.last_consumed_credit_at = attributes[:'last_consumed_credit_at']
      end

      if attributes.key?(:'terminated_at')
        self.terminated_at = attributes[:'terminated_at']
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

      if @lago_customer_id.nil?
        invalid_properties.push('invalid value for "lago_customer_id", lago_customer_id cannot be nil.')
      end

      if @external_customer_id.nil?
        invalid_properties.push('invalid value for "external_customer_id", external_customer_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @rate_amount.nil?
        invalid_properties.push('invalid value for "rate_amount", rate_amount cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if @rate_amount !~ pattern
        invalid_properties.push("invalid value for \"rate_amount\", must conform to the pattern #{pattern}.")
      end

      if @credits_balance.nil?
        invalid_properties.push('invalid value for "credits_balance", credits_balance cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if @credits_balance !~ pattern
        invalid_properties.push("invalid value for \"credits_balance\", must conform to the pattern #{pattern}.")
      end

      if @balance_cents.nil?
        invalid_properties.push('invalid value for "balance_cents", balance_cents cannot be nil.')
      end

      if @consumed_credits.nil?
        invalid_properties.push('invalid value for "consumed_credits", consumed_credits cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if @consumed_credits !~ pattern
        invalid_properties.push("invalid value for \"consumed_credits\", must conform to the pattern #{pattern}.")
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
      return false if @lago_customer_id.nil?
      return false if @external_customer_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["active", "terminated"])
      return false unless status_validator.valid?(@status)
      return false if @currency.nil?
      return false if @rate_amount.nil?
      return false if @rate_amount !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if @credits_balance.nil?
      return false if @credits_balance !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if @balance_cents.nil?
      return false if @consumed_credits.nil?
      return false if @consumed_credits !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if @created_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["active", "terminated"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
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
    # @param [Object] credits_balance Value to be assigned
    def credits_balance=(credits_balance)
      if credits_balance.nil?
        fail ArgumentError, 'credits_balance cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if credits_balance !~ pattern
        fail ArgumentError, "invalid value for \"credits_balance\", must conform to the pattern #{pattern}."
      end

      @credits_balance = credits_balance
    end

    # Custom attribute writer method with validation
    # @param [Object] consumed_credits Value to be assigned
    def consumed_credits=(consumed_credits)
      if consumed_credits.nil?
        fail ArgumentError, 'consumed_credits cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if consumed_credits !~ pattern
        fail ArgumentError, "invalid value for \"consumed_credits\", must conform to the pattern #{pattern}."
      end

      @consumed_credits = consumed_credits
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_id == o.lago_id &&
          lago_customer_id == o.lago_customer_id &&
          external_customer_id == o.external_customer_id &&
          status == o.status &&
          currency == o.currency &&
          name == o.name &&
          rate_amount == o.rate_amount &&
          credits_balance == o.credits_balance &&
          balance_cents == o.balance_cents &&
          consumed_credits == o.consumed_credits &&
          created_at == o.created_at &&
          expiration_at == o.expiration_at &&
          last_balance_sync_at == o.last_balance_sync_at &&
          last_consumed_credit_at == o.last_consumed_credit_at &&
          terminated_at == o.terminated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lago_id, lago_customer_id, external_customer_id, status, currency, name, rate_amount, credits_balance, balance_cents, consumed_credits, created_at, expiration_at, last_balance_sync_at, last_consumed_credit_at, terminated_at].hash
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
