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
  class GroupPropertiesObjectValues
    # Graduated ranges, sorted from bottom to top tiers, used for a `graduated` charge model.
    attr_accessor :graduated_ranges

    # Graduated percentage ranges, sorted from bottom to top tiers, used for a `graduated_percentage` charge model.
    attr_accessor :graduated_percentage_ranges

    # - The unit price, excluding tax, for a `standard` charge model. It is expressed as a decimal value. - The amount, excluding tax, for a complete set of units in a `package` charge model. It is expressed as a decimal value.
    attr_accessor :amount

    # The quantity of units that are provided free of charge for each billing period in a `package` charge model. This field specifies the number of units that customers can use without incurring any additional cost during each billing cycle.
    attr_accessor :free_units

    # The quantity of units included in each pack or set for a `package` charge model. It indicates the number of units that are bundled together as a single package or set within the pricing structure.
    attr_accessor :package_size

    # The percentage rate that is applied to the amount of each transaction for a `percentage` charge model. It is expressed as a decimal value.
    attr_accessor :rate

    # The fixed fee that is applied to each transaction for a `percentage` charge model. It is expressed as a decimal value.
    attr_accessor :fixed_amount

    # The count of transactions that are not impacted by the `percentage` rate and fixed fee in a percentage charge model. This field indicates the number of transactions that are exempt from the calculation of charges based on the specified percentage rate and fixed fee.
    attr_accessor :free_units_per_events

    # The transaction amount that is not impacted by the `percentage` rate and fixed fee in a percentage charge model. This field indicates the portion of the transaction amount that is exempt from the calculation of charges based on the specified percentage rate and fixed fee.
    attr_accessor :free_units_per_total_aggregation

    # Specifies the maximum allowable spending for a single transaction. Working as a transaction cap.
    attr_accessor :per_transaction_max_amount

    # Specifies the minimum allowable spending for a single transaction. Working as a transaction floor.
    attr_accessor :per_transaction_min_amount

    # Volume ranges, sorted from bottom to top tiers, used for a `volume` charge model.
    attr_accessor :volume_ranges

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'graduated_ranges' => :'graduated_ranges',
        :'graduated_percentage_ranges' => :'graduated_percentage_ranges',
        :'amount' => :'amount',
        :'free_units' => :'free_units',
        :'package_size' => :'package_size',
        :'rate' => :'rate',
        :'fixed_amount' => :'fixed_amount',
        :'free_units_per_events' => :'free_units_per_events',
        :'free_units_per_total_aggregation' => :'free_units_per_total_aggregation',
        :'per_transaction_max_amount' => :'per_transaction_max_amount',
        :'per_transaction_min_amount' => :'per_transaction_min_amount',
        :'volume_ranges' => :'volume_ranges'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'graduated_ranges' => :'Array<ChargePropertiesGraduatedRangesInner>',
        :'graduated_percentage_ranges' => :'Array<ChargePropertiesGraduatedPercentageRangesInner>',
        :'amount' => :'String',
        :'free_units' => :'Integer',
        :'package_size' => :'Integer',
        :'rate' => :'String',
        :'fixed_amount' => :'String',
        :'free_units_per_events' => :'Integer',
        :'free_units_per_total_aggregation' => :'String',
        :'per_transaction_max_amount' => :'String',
        :'per_transaction_min_amount' => :'String',
        :'volume_ranges' => :'Array<ChargePropertiesVolumeRangesInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'free_units_per_events',
        :'free_units_per_total_aggregation',
        :'per_transaction_max_amount',
        :'per_transaction_min_amount',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ChargeProperties'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::GroupPropertiesObjectValues` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::GroupPropertiesObjectValues`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'graduated_ranges')
        if (value = attributes[:'graduated_ranges']).is_a?(Array)
          self.graduated_ranges = value
        end
      end

      if attributes.key?(:'graduated_percentage_ranges')
        if (value = attributes[:'graduated_percentage_ranges']).is_a?(Array)
          self.graduated_percentage_ranges = value
        end
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'free_units')
        self.free_units = attributes[:'free_units']
      end

      if attributes.key?(:'package_size')
        self.package_size = attributes[:'package_size']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.key?(:'fixed_amount')
        self.fixed_amount = attributes[:'fixed_amount']
      end

      if attributes.key?(:'free_units_per_events')
        self.free_units_per_events = attributes[:'free_units_per_events']
      end

      if attributes.key?(:'free_units_per_total_aggregation')
        self.free_units_per_total_aggregation = attributes[:'free_units_per_total_aggregation']
      end

      if attributes.key?(:'per_transaction_max_amount')
        self.per_transaction_max_amount = attributes[:'per_transaction_max_amount']
      end

      if attributes.key?(:'per_transaction_min_amount')
        self.per_transaction_min_amount = attributes[:'per_transaction_min_amount']
      end

      if attributes.key?(:'volume_ranges')
        if (value = attributes[:'volume_ranges']).is_a?(Array)
          self.volume_ranges = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@amount.nil? && @amount !~ pattern
        invalid_properties.push("invalid value for \"amount\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@rate.nil? && @rate !~ pattern
        invalid_properties.push("invalid value for \"rate\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@fixed_amount.nil? && @fixed_amount !~ pattern
        invalid_properties.push("invalid value for \"fixed_amount\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@free_units_per_total_aggregation.nil? && @free_units_per_total_aggregation !~ pattern
        invalid_properties.push("invalid value for \"free_units_per_total_aggregation\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@amount.nil? && @amount !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if !@rate.nil? && @rate !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if !@fixed_amount.nil? && @fixed_amount !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      return false if !@free_units_per_total_aggregation.nil? && @free_units_per_total_aggregation !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if amount !~ pattern
        fail ArgumentError, "invalid value for \"amount\", must conform to the pattern #{pattern}."
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] rate Value to be assigned
    def rate=(rate)
      if rate.nil?
        fail ArgumentError, 'rate cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if rate !~ pattern
        fail ArgumentError, "invalid value for \"rate\", must conform to the pattern #{pattern}."
      end

      @rate = rate
    end

    # Custom attribute writer method with validation
    # @param [Object] fixed_amount Value to be assigned
    def fixed_amount=(fixed_amount)
      if fixed_amount.nil?
        fail ArgumentError, 'fixed_amount cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if fixed_amount !~ pattern
        fail ArgumentError, "invalid value for \"fixed_amount\", must conform to the pattern #{pattern}."
      end

      @fixed_amount = fixed_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] free_units_per_total_aggregation Value to be assigned
    def free_units_per_total_aggregation=(free_units_per_total_aggregation)
      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !free_units_per_total_aggregation.nil? && free_units_per_total_aggregation !~ pattern
        fail ArgumentError, "invalid value for \"free_units_per_total_aggregation\", must conform to the pattern #{pattern}."
      end

      @free_units_per_total_aggregation = free_units_per_total_aggregation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          graduated_ranges == o.graduated_ranges &&
          graduated_percentage_ranges == o.graduated_percentage_ranges &&
          amount == o.amount &&
          free_units == o.free_units &&
          package_size == o.package_size &&
          rate == o.rate &&
          fixed_amount == o.fixed_amount &&
          free_units_per_events == o.free_units_per_events &&
          free_units_per_total_aggregation == o.free_units_per_total_aggregation &&
          per_transaction_max_amount == o.per_transaction_max_amount &&
          per_transaction_min_amount == o.per_transaction_min_amount &&
          volume_ranges == o.volume_ranges
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [graduated_ranges, graduated_percentage_ranges, amount, free_units, package_size, rate, fixed_amount, free_units_per_events, free_units_per_total_aggregation, per_transaction_max_amount, per_transaction_min_amount, volume_ranges].hash
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
