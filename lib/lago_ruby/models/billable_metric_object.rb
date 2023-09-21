=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.48.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module LagoAPI
  class BillableMetricObject
    # Unique identifier of the billable metric created by Lago.
    attr_accessor :lago_id

    # Name of the billable metric.
    attr_accessor :name

    # Unique code used to identify the billable metric associated with the API request. This code associates each event with the correct metric.
    attr_accessor :code

    # Internal description of the billable metric.
    attr_accessor :description

    # Defines if the billable metric is persisted billing period over billing period.  - If set to `true`: the accumulated number of units calculated from the previous billing period is persisted to the next billing period. - If set to `false`: the accumulated number of units is reset to 0 at the end of the billing period. - If not defined in the request, default value is `false`.
    attr_accessor :recurring

    # Creation date of the billable metric.
    attr_accessor :created_at

    # Property of the billable metric used for aggregating usage data. This field is not required for `count_agg`.
    attr_accessor :field_name

    # Aggregation method used to compute usage for this billable metric. Possible values are `count_agg`, `sum_agg`, `max_agg` or `unique_count_agg`.
    attr_accessor :aggregation_type

    # Parameter exclusively utilized in conjunction with the `weighted_sum` aggregation type. It serves to adjust the aggregation result by assigning weights and proration to the result based on time intervals. When this field is not provided, the default time interval is assumed to be in `seconds`.
    attr_accessor :weighted_interval

    attr_accessor :group

    # Number of active subscriptions using this billable metric.
    attr_accessor :active_subscriptions_count

    # Number of draft invoices for which this billable metric is listed as an invoice item.
    attr_accessor :draft_invoices_count

    # Number of plans using this billable metric.
    attr_accessor :plans_count

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
        :'recurring' => :'recurring',
        :'created_at' => :'created_at',
        :'field_name' => :'field_name',
        :'aggregation_type' => :'aggregation_type',
        :'weighted_interval' => :'weighted_interval',
        :'group' => :'group',
        :'active_subscriptions_count' => :'active_subscriptions_count',
        :'draft_invoices_count' => :'draft_invoices_count',
        :'plans_count' => :'plans_count'
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
        :'recurring' => :'Boolean',
        :'created_at' => :'Time',
        :'field_name' => :'String',
        :'aggregation_type' => :'String',
        :'weighted_interval' => :'String',
        :'group' => :'BillableMetricGroup',
        :'active_subscriptions_count' => :'Integer',
        :'draft_invoices_count' => :'Integer',
        :'plans_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'field_name',
        :'weighted_interval',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::BillableMetricObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::BillableMetricObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'recurring')
        self.recurring = attributes[:'recurring']
      else
        self.recurring = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'field_name')
        self.field_name = attributes[:'field_name']
      end

      if attributes.key?(:'aggregation_type')
        self.aggregation_type = attributes[:'aggregation_type']
      else
        self.aggregation_type = nil
      end

      if attributes.key?(:'weighted_interval')
        self.weighted_interval = attributes[:'weighted_interval']
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'active_subscriptions_count')
        self.active_subscriptions_count = attributes[:'active_subscriptions_count']
      else
        self.active_subscriptions_count = nil
      end

      if attributes.key?(:'draft_invoices_count')
        self.draft_invoices_count = attributes[:'draft_invoices_count']
      else
        self.draft_invoices_count = nil
      end

      if attributes.key?(:'plans_count')
        self.plans_count = attributes[:'plans_count']
      else
        self.plans_count = nil
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

      if @recurring.nil?
        invalid_properties.push('invalid value for "recurring", recurring cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @aggregation_type.nil?
        invalid_properties.push('invalid value for "aggregation_type", aggregation_type cannot be nil.')
      end

      if @active_subscriptions_count.nil?
        invalid_properties.push('invalid value for "active_subscriptions_count", active_subscriptions_count cannot be nil.')
      end

      if @draft_invoices_count.nil?
        invalid_properties.push('invalid value for "draft_invoices_count", draft_invoices_count cannot be nil.')
      end

      if @plans_count.nil?
        invalid_properties.push('invalid value for "plans_count", plans_count cannot be nil.')
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
      return false if @recurring.nil?
      return false if @created_at.nil?
      return false if @aggregation_type.nil?
      aggregation_type_validator = EnumAttributeValidator.new('String', ["count_agg", "sum_agg", "max_agg", "unique_count_agg", "weighted_sum_agg"])
      return false unless aggregation_type_validator.valid?(@aggregation_type)
      weighted_interval_validator = EnumAttributeValidator.new('String', ["seconds"])
      return false unless weighted_interval_validator.valid?(@weighted_interval)
      return false if @active_subscriptions_count.nil?
      return false if @draft_invoices_count.nil?
      return false if @plans_count.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aggregation_type Object to be assigned
    def aggregation_type=(aggregation_type)
      validator = EnumAttributeValidator.new('String', ["count_agg", "sum_agg", "max_agg", "unique_count_agg", "weighted_sum_agg"])
      unless validator.valid?(aggregation_type)
        fail ArgumentError, "invalid value for \"aggregation_type\", must be one of #{validator.allowable_values}."
      end
      @aggregation_type = aggregation_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] weighted_interval Object to be assigned
    def weighted_interval=(weighted_interval)
      validator = EnumAttributeValidator.new('String', ["seconds"])
      unless validator.valid?(weighted_interval)
        fail ArgumentError, "invalid value for \"weighted_interval\", must be one of #{validator.allowable_values}."
      end
      @weighted_interval = weighted_interval
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
          recurring == o.recurring &&
          created_at == o.created_at &&
          field_name == o.field_name &&
          aggregation_type == o.aggregation_type &&
          weighted_interval == o.weighted_interval &&
          group == o.group &&
          active_subscriptions_count == o.active_subscriptions_count &&
          draft_invoices_count == o.draft_invoices_count &&
          plans_count == o.plans_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lago_id, name, code, description, recurring, created_at, field_name, aggregation_type, weighted_interval, group, active_subscriptions_count, draft_invoices_count, plans_count].hash
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
