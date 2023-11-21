=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.51.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0-SNAPSHOT

=end

require 'date'
require 'time'

module LagoAPI
  class CouponObject
    # Unique identifier of the coupon, created by Lago.
    attr_accessor :lago_id

    # The name of the coupon.
    attr_accessor :name

    # Unique code used to identify the coupon.
    attr_accessor :code

    # Description of the coupon.
    attr_accessor :description

    # The type of the coupon. It can have two possible values: `fixed_amount` or `percentage`.  - If set to `fixed_amount`, the coupon represents a fixed amount discount. - If set to `percentage`, the coupon represents a percentage-based discount.
    attr_accessor :coupon_type

    # The amount of the coupon in cents. This field is required only for coupon with `fixed_amount` type.
    attr_accessor :amount_cents

    attr_accessor :amount_currency

    # Indicates whether the coupon can be reused or not. If set to `true`, the coupon is reusable, meaning it can be applied multiple times to the same customer. If set to `false`, the coupon can only be used once and is not reusable. If not specified, this field is set to `true` by default.
    attr_accessor :reusable

    # The coupon is limited to specific plans. The possible values can be `true` or `false`.
    attr_accessor :limited_plans

    # An array of plan codes to which the coupon is applicable. By specifying the plan codes in this field, you can restrict the coupon's usage to specific plans only.
    attr_accessor :plan_codes

    # The coupon is limited to specific billable metrics. The possible values can be `true` or `false`.
    attr_accessor :limited_billable_metrics

    # An array of billable metric codes to which the coupon is applicable. By specifying the billable metric codes in this field, you can restrict the coupon's usage to specific metrics only.
    attr_accessor :billable_metric_codes

    # The percentage rate of the coupon. This field is required only for coupons with a `percentage` coupon type.
    attr_accessor :percentage_rate

    # The type of frequency for the coupon. It can have three possible values: `once`, `recurring`, or `forever`.  - If set to `once`, the coupon is applicable only for a single use. - If set to `recurring`, the coupon can be used multiple times for recurring billing periods. - If set to `forever`, the coupon has unlimited usage and can be applied indefinitely.
    attr_accessor :frequency

    # Specifies the number of billing periods to which the coupon applies. This field is required only for coupons with a `recurring` frequency type
    attr_accessor :frequency_duration

    # Specifies the type of expiration for the coupon. It can have two possible values: `time_limit` or `no_expiration`.  - If set to `time_limit`, the coupon has an expiration based on a specified time limit. - If set to `no_expiration`, the coupon does not have an expiration date and remains valid indefinitely.
    attr_accessor :expiration

    # The expiration date and time of the coupon. This field is required only for coupons with `expiration` set to `time_limit`. The expiration date and time should be specified in UTC format according to the ISO 8601 datetime standard. It indicates the exact moment when the coupon will expire and is no longer valid.
    attr_accessor :expiration_at

    # The date and time when the coupon was created. It is expressed in UTC format according to the ISO 8601 datetime standard. This field provides the timestamp for the exact moment when the coupon was initially created.
    attr_accessor :created_at

    # This field indicates if the coupon has been terminated and is no longer usable. If it's not null, it won't be removed for existing customers using it, but it prevents the coupon from being applied in the future.
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
        :'name' => :'name',
        :'code' => :'code',
        :'description' => :'description',
        :'coupon_type' => :'coupon_type',
        :'amount_cents' => :'amount_cents',
        :'amount_currency' => :'amount_currency',
        :'reusable' => :'reusable',
        :'limited_plans' => :'limited_plans',
        :'plan_codes' => :'plan_codes',
        :'limited_billable_metrics' => :'limited_billable_metrics',
        :'billable_metric_codes' => :'billable_metric_codes',
        :'percentage_rate' => :'percentage_rate',
        :'frequency' => :'frequency',
        :'frequency_duration' => :'frequency_duration',
        :'expiration' => :'expiration',
        :'expiration_at' => :'expiration_at',
        :'created_at' => :'created_at',
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
        :'name' => :'String',
        :'code' => :'String',
        :'description' => :'String',
        :'coupon_type' => :'String',
        :'amount_cents' => :'Integer',
        :'amount_currency' => :'Currency',
        :'reusable' => :'Boolean',
        :'limited_plans' => :'Boolean',
        :'plan_codes' => :'Array<String>',
        :'limited_billable_metrics' => :'Boolean',
        :'billable_metric_codes' => :'Array<String>',
        :'percentage_rate' => :'String',
        :'frequency' => :'String',
        :'frequency_duration' => :'Integer',
        :'expiration' => :'String',
        :'expiration_at' => :'Time',
        :'created_at' => :'Time',
        :'terminated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'amount_cents',
        :'percentage_rate',
        :'frequency_duration',
        :'expiration_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::CouponObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::CouponObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      else
        self.code = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'coupon_type')
        self.coupon_type = attributes[:'coupon_type']
      else
        self.coupon_type = nil
      end

      if attributes.key?(:'amount_cents')
        self.amount_cents = attributes[:'amount_cents']
      end

      if attributes.key?(:'amount_currency')
        self.amount_currency = attributes[:'amount_currency']
      end

      if attributes.key?(:'reusable')
        self.reusable = attributes[:'reusable']
      else
        self.reusable = nil
      end

      if attributes.key?(:'limited_plans')
        self.limited_plans = attributes[:'limited_plans']
      else
        self.limited_plans = nil
      end

      if attributes.key?(:'plan_codes')
        if (value = attributes[:'plan_codes']).is_a?(Array)
          self.plan_codes = value
        end
      end

      if attributes.key?(:'limited_billable_metrics')
        self.limited_billable_metrics = attributes[:'limited_billable_metrics']
      else
        self.limited_billable_metrics = nil
      end

      if attributes.key?(:'billable_metric_codes')
        if (value = attributes[:'billable_metric_codes']).is_a?(Array)
          self.billable_metric_codes = value
        end
      end

      if attributes.key?(:'percentage_rate')
        self.percentage_rate = attributes[:'percentage_rate']
      end

      if attributes.key?(:'frequency')
        self.frequency = attributes[:'frequency']
      else
        self.frequency = nil
      end

      if attributes.key?(:'frequency_duration')
        self.frequency_duration = attributes[:'frequency_duration']
      end

      if attributes.key?(:'expiration')
        self.expiration = attributes[:'expiration']
      else
        self.expiration = nil
      end

      if attributes.key?(:'expiration_at')
        self.expiration_at = attributes[:'expiration_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
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

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @coupon_type.nil?
        invalid_properties.push('invalid value for "coupon_type", coupon_type cannot be nil.')
      end

      if @reusable.nil?
        invalid_properties.push('invalid value for "reusable", reusable cannot be nil.')
      end

      if @limited_plans.nil?
        invalid_properties.push('invalid value for "limited_plans", limited_plans cannot be nil.')
      end

      if @limited_billable_metrics.nil?
        invalid_properties.push('invalid value for "limited_billable_metrics", limited_billable_metrics cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@percentage_rate.nil? && @percentage_rate !~ pattern
        invalid_properties.push("invalid value for \"percentage_rate\", must conform to the pattern #{pattern}.")
      end

      if @frequency.nil?
        invalid_properties.push('invalid value for "frequency", frequency cannot be nil.')
      end

      if @expiration.nil?
        invalid_properties.push('invalid value for "expiration", expiration cannot be nil.')
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
      return false if @coupon_type.nil?
      coupon_type_validator = EnumAttributeValidator.new('String', ["fixed_amount", "percentage"])
      return false unless coupon_type_validator.valid?(@coupon_type)
      return false if @reusable.nil?
      return false if @limited_plans.nil?
      return false if @limited_billable_metrics.nil?
      return false if !@percentage_rate.nil? && @percentage_rate !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if @frequency.nil?
      frequency_validator = EnumAttributeValidator.new('String', ["once", "recurring"])
      return false unless frequency_validator.valid?(@frequency)
      return false if @expiration.nil?
      expiration_validator = EnumAttributeValidator.new('String', ["no_expiration", "time_limit"])
      return false unless expiration_validator.valid?(@expiration)
      return false if @created_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon_type Object to be assigned
    def coupon_type=(coupon_type)
      validator = EnumAttributeValidator.new('String', ["fixed_amount", "percentage"])
      unless validator.valid?(coupon_type)
        fail ArgumentError, "invalid value for \"coupon_type\", must be one of #{validator.allowable_values}."
      end
      @coupon_type = coupon_type
    end

    # Custom attribute writer method with validation
    # @param [Object] percentage_rate Value to be assigned
    def percentage_rate=(percentage_rate)
      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !percentage_rate.nil? && percentage_rate !~ pattern
        fail ArgumentError, "invalid value for \"percentage_rate\", must conform to the pattern #{pattern}."
      end

      @percentage_rate = percentage_rate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency Object to be assigned
    def frequency=(frequency)
      validator = EnumAttributeValidator.new('String', ["once", "recurring"])
      unless validator.valid?(frequency)
        fail ArgumentError, "invalid value for \"frequency\", must be one of #{validator.allowable_values}."
      end
      @frequency = frequency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiration Object to be assigned
    def expiration=(expiration)
      validator = EnumAttributeValidator.new('String', ["no_expiration", "time_limit"])
      unless validator.valid?(expiration)
        fail ArgumentError, "invalid value for \"expiration\", must be one of #{validator.allowable_values}."
      end
      @expiration = expiration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_id == o.lago_id &&
          name == o.name &&
          code == o.code &&
          description == o.description &&
          coupon_type == o.coupon_type &&
          amount_cents == o.amount_cents &&
          amount_currency == o.amount_currency &&
          reusable == o.reusable &&
          limited_plans == o.limited_plans &&
          plan_codes == o.plan_codes &&
          limited_billable_metrics == o.limited_billable_metrics &&
          billable_metric_codes == o.billable_metric_codes &&
          percentage_rate == o.percentage_rate &&
          frequency == o.frequency &&
          frequency_duration == o.frequency_duration &&
          expiration == o.expiration &&
          expiration_at == o.expiration_at &&
          created_at == o.created_at &&
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
      [lago_id, name, code, description, coupon_type, amount_cents, amount_currency, reusable, limited_plans, plan_codes, limited_billable_metrics, billable_metric_codes, percentage_rate, frequency, frequency_duration, expiration, expiration_at, created_at, terminated_at].hash
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
