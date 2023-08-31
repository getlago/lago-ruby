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
  # Configuration specific to the payment provider, utilized for billing the customer. This object contains settings and parameters necessary for processing payments and invoicing the customer.
  class CustomerBillingConfiguration
    # The grace period, expressed in days, for the invoice. This period refers to the additional time granted to the customer beyond the invoice due date to adjust usage and line items
    attr_accessor :invoice_grace_period

    # The payment provider utilized to initiate payments for invoices issued by Lago. Accepted values: `stripe`, `adyen`, `gocardless` or null. This field is required if you intend to assign a `provider_customer_id`.
    attr_accessor :payment_provider

    # The customer ID within the payment provider's system. If this field is not provided, Lago has the option to create a new customer record within the payment provider's system on behalf of the customer
    attr_accessor :provider_customer_id

    # Set this field to `true` if you want to create the customer in the payment provider synchronously with the customer creation process in Lago. This option is applicable only when the `provider_customer_id` is `null` and the customer is automatically created in the payment provider through Lago. By default, the value is set to `false`
    attr_accessor :sync

    # Set this field to `true` if you want to create a customer record in the payment provider's system. This option is applicable only when the `provider_customer_id` is null and the `sync_with_provider` field is set to `true`. By default, the value is set to `false`
    attr_accessor :sync_with_provider

    # The document locale, specified in the ISO 639-1 format. This field represents the language or locale used for the documents issued by Lago
    attr_accessor :document_locale

    # Specifies the available payment methods that can be used for this customer when `payment_provider` is set to `stripe`. The `provider_payment_methods` field is an array that allows multiple payment options to be defined. If this field is not explicitly set, all the payment methods are selected. For now, possible values are `card` and `sepa_debit`.
    attr_accessor :provider_payment_methods

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
        :'invoice_grace_period' => :'invoice_grace_period',
        :'payment_provider' => :'payment_provider',
        :'provider_customer_id' => :'provider_customer_id',
        :'sync' => :'sync',
        :'sync_with_provider' => :'sync_with_provider',
        :'document_locale' => :'document_locale',
        :'provider_payment_methods' => :'provider_payment_methods'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'invoice_grace_period' => :'Integer',
        :'payment_provider' => :'String',
        :'provider_customer_id' => :'String',
        :'sync' => :'Boolean',
        :'sync_with_provider' => :'Boolean',
        :'document_locale' => :'String',
        :'provider_payment_methods' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'provider_payment_methods'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::CustomerBillingConfiguration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::CustomerBillingConfiguration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'invoice_grace_period')
        self.invoice_grace_period = attributes[:'invoice_grace_period']
      end

      if attributes.key?(:'payment_provider')
        self.payment_provider = attributes[:'payment_provider']
      end

      if attributes.key?(:'provider_customer_id')
        self.provider_customer_id = attributes[:'provider_customer_id']
      end

      if attributes.key?(:'sync')
        self.sync = attributes[:'sync']
      end

      if attributes.key?(:'sync_with_provider')
        self.sync_with_provider = attributes[:'sync_with_provider']
      end

      if attributes.key?(:'document_locale')
        self.document_locale = attributes[:'document_locale']
      end

      if attributes.key?(:'provider_payment_methods')
        if (value = attributes[:'provider_payment_methods']).is_a?(Array)
          self.provider_payment_methods = value
        end
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
      payment_provider_validator = EnumAttributeValidator.new('String', ["stripe", "adyen", "gocardless"])
      return false unless payment_provider_validator.valid?(@payment_provider)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_provider Object to be assigned
    def payment_provider=(payment_provider)
      validator = EnumAttributeValidator.new('String', ["stripe", "adyen", "gocardless"])
      unless validator.valid?(payment_provider)
        fail ArgumentError, "invalid value for \"payment_provider\", must be one of #{validator.allowable_values}."
      end
      @payment_provider = payment_provider
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          invoice_grace_period == o.invoice_grace_period &&
          payment_provider == o.payment_provider &&
          provider_customer_id == o.provider_customer_id &&
          sync == o.sync &&
          sync_with_provider == o.sync_with_provider &&
          document_locale == o.document_locale &&
          provider_payment_methods == o.provider_payment_methods
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [invoice_grace_period, payment_provider, provider_customer_id, sync, sync_with_provider, document_locale, provider_payment_methods].hash
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
