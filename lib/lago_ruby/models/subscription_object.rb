=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.45.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module LagoAPI
  class SubscriptionObject
    # Unique identifier assigned to the subscription within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the subscription’s record within the Lago system
    attr_accessor :lago_id

    # The subscription external unique identifier (provided by your own application).
    attr_accessor :external_id

    # Unique identifier assigned to the customer within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the customer's record within the Lago system
    attr_accessor :lago_customer_id

    # The customer external unique identifier (provided by your own application).
    attr_accessor :external_customer_id

    # The billing time for the subscription, which can be set as either `anniversary` or `calendar`. If not explicitly provided, it will default to `calendar`. The billing time determines the timing of recurring billing cycles for the subscription. By specifying `anniversary`, the billing cycle will be based on the specific date the subscription started (billed fully), while `calendar` sets the billing cycle at the first day of the week/month/year (billed with proration).
    attr_accessor :billing_time

    # The display name of the subscription on an invoice. This field allows for customization of the subscription's name for billing purposes, especially useful when a single customer has multiple subscriptions using the same plan.
    attr_accessor :name

    # The unique code representing the plan to be attached to the customer. This code must correspond to the `code` property of one of the active plans.
    attr_accessor :plan_code

    # The status of the subscription, which can have the following values: - `pending`: a previous subscription has been downgraded, and the current one is awaiting automatic activation at the end of the billing period. - `active`: the subscription is currently active and applied to the customer. - `terminated`: the subscription is no longer active. - `canceled`: the subscription has been stopped before its activation. This can occur when two consecutive downgrades have been applied to a customer or when a subscription with a pending status is terminated.
    attr_accessor :status

    # The creation date of the subscription, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). This date provides a timestamp indicating when the subscription was initially created.
    attr_accessor :created_at

    # The cancellation date of the subscription. This field is not null when the subscription is `canceled`. This date should be provided in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC).
    attr_accessor :canceled_at

    # The effective start date of the subscription. This field can be null if the subscription is `pending` or `canceled`. This date should be provided in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC).
    attr_accessor :started_at

    # The anniversary date and time of the initial subscription. This date serves as the basis for billing subscriptions with `anniversary` billing time. The `anniversary_date` should be provided in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC).
    attr_accessor :subscription_at

    # The termination date of the subscription. This field is not null when the subscription is `terminated`. This date should be provided in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC)
    attr_accessor :terminated_at

    # The code identifying the previous plan associated with this subscription.
    attr_accessor :previous_plan_code

    # The code identifying the next plan in the case of a downgrade.
    attr_accessor :next_plan_code

    # The date when the plan will be downgraded, represented in ISO 8601 date format.
    attr_accessor :downgrade_plan_date

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
        :'external_id' => :'external_id',
        :'lago_customer_id' => :'lago_customer_id',
        :'external_customer_id' => :'external_customer_id',
        :'billing_time' => :'billing_time',
        :'name' => :'name',
        :'plan_code' => :'plan_code',
        :'status' => :'status',
        :'created_at' => :'created_at',
        :'canceled_at' => :'canceled_at',
        :'started_at' => :'started_at',
        :'subscription_at' => :'subscription_at',
        :'terminated_at' => :'terminated_at',
        :'previous_plan_code' => :'previous_plan_code',
        :'next_plan_code' => :'next_plan_code',
        :'downgrade_plan_date' => :'downgrade_plan_date'
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
        :'external_id' => :'String',
        :'lago_customer_id' => :'String',
        :'external_customer_id' => :'String',
        :'billing_time' => :'String',
        :'name' => :'String',
        :'plan_code' => :'String',
        :'status' => :'String',
        :'created_at' => :'Time',
        :'canceled_at' => :'Time',
        :'started_at' => :'Time',
        :'subscription_at' => :'Time',
        :'terminated_at' => :'Time',
        :'previous_plan_code' => :'String',
        :'next_plan_code' => :'String',
        :'downgrade_plan_date' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'canceled_at',
        :'started_at',
        :'terminated_at',
        :'previous_plan_code',
        :'next_plan_code',
        :'downgrade_plan_date'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::SubscriptionObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::SubscriptionObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lago_id')
        self.lago_id = attributes[:'lago_id']
      else
        self.lago_id = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      else
        self.external_id = nil
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

      if attributes.key?(:'billing_time')
        self.billing_time = attributes[:'billing_time']
      else
        self.billing_time = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'plan_code')
        self.plan_code = attributes[:'plan_code']
      else
        self.plan_code = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'canceled_at')
        self.canceled_at = attributes[:'canceled_at']
      end

      if attributes.key?(:'started_at')
        self.started_at = attributes[:'started_at']
      end

      if attributes.key?(:'subscription_at')
        self.subscription_at = attributes[:'subscription_at']
      else
        self.subscription_at = nil
      end

      if attributes.key?(:'terminated_at')
        self.terminated_at = attributes[:'terminated_at']
      end

      if attributes.key?(:'previous_plan_code')
        self.previous_plan_code = attributes[:'previous_plan_code']
      end

      if attributes.key?(:'next_plan_code')
        self.next_plan_code = attributes[:'next_plan_code']
      end

      if attributes.key?(:'downgrade_plan_date')
        self.downgrade_plan_date = attributes[:'downgrade_plan_date']
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

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if @lago_customer_id.nil?
        invalid_properties.push('invalid value for "lago_customer_id", lago_customer_id cannot be nil.')
      end

      if @external_customer_id.nil?
        invalid_properties.push('invalid value for "external_customer_id", external_customer_id cannot be nil.')
      end

      if @billing_time.nil?
        invalid_properties.push('invalid value for "billing_time", billing_time cannot be nil.')
      end

      if @plan_code.nil?
        invalid_properties.push('invalid value for "plan_code", plan_code cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @subscription_at.nil?
        invalid_properties.push('invalid value for "subscription_at", subscription_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @lago_id.nil?
      return false if @external_id.nil?
      return false if @lago_customer_id.nil?
      return false if @external_customer_id.nil?
      return false if @billing_time.nil?
      billing_time_validator = EnumAttributeValidator.new('String', ["calendar", "anniversary"])
      return false unless billing_time_validator.valid?(@billing_time)
      return false if @plan_code.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["active", "pending", "terminated", "canceled"])
      return false unless status_validator.valid?(@status)
      return false if @created_at.nil?
      return false if @subscription_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_time Object to be assigned
    def billing_time=(billing_time)
      validator = EnumAttributeValidator.new('String', ["calendar", "anniversary"])
      unless validator.valid?(billing_time)
        fail ArgumentError, "invalid value for \"billing_time\", must be one of #{validator.allowable_values}."
      end
      @billing_time = billing_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["active", "pending", "terminated", "canceled"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_id == o.lago_id &&
          external_id == o.external_id &&
          lago_customer_id == o.lago_customer_id &&
          external_customer_id == o.external_customer_id &&
          billing_time == o.billing_time &&
          name == o.name &&
          plan_code == o.plan_code &&
          status == o.status &&
          created_at == o.created_at &&
          canceled_at == o.canceled_at &&
          started_at == o.started_at &&
          subscription_at == o.subscription_at &&
          terminated_at == o.terminated_at &&
          previous_plan_code == o.previous_plan_code &&
          next_plan_code == o.next_plan_code &&
          downgrade_plan_date == o.downgrade_plan_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lago_id, external_id, lago_customer_id, external_customer_id, billing_time, name, plan_code, status, created_at, canceled_at, started_at, subscription_at, terminated_at, previous_plan_code, next_plan_code, downgrade_plan_date].hash
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
