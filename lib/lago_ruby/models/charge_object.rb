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
  class ChargeObject
    # Unique identifier of charge, created by Lago.
    attr_accessor :lago_id

    # Unique identifier of the billable metric created by Lago.
    attr_accessor :lago_billable_metric_id

    # Unique code identifying a billable metric.
    attr_accessor :billable_metric_code

    # Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name.
    attr_accessor :invoice_display_name

    # The date and time when the charge was created. It is expressed in UTC format according to the ISO 8601 datetime standard.
    attr_accessor :created_at

    # Specifies the pricing model used for the calculation of the final fee. It can be `standard`, `graduated`, `graduated_percentage`, `package`, `percentage` or `volume`.
    attr_accessor :charge_model

    # This field determines the billing timing for this specific usage-based charge. When set to `true`, the charge is due and invoiced immediately. Conversely, when set to `false`, the charge is due and invoiced at the end of each billing period.
    attr_accessor :pay_in_advance

    # This field specifies whether the charge should be included in a proper invoice. If set to `false`, no invoice will be issued for this charge. You can only set it to `false` when `pay_in_advance` is `true`.
    attr_accessor :invoiceable

    # Specifies whether a charge is prorated based on the remaining number of days in the billing period or billed fully.  - If set to `true`, the charge is prorated based on the remaining days in the current billing period. - If set to `false`, the charge is billed in full. - If not defined in the request, default value is `false`.
    attr_accessor :prorated

    # The minimum spending amount required for the charge, measured in cents and excluding any applicable taxes. It indicates the minimum amount that needs to be charged for each billing period.
    attr_accessor :min_amount_cents

    attr_accessor :properties

    # All charge information, sorted by groups.
    attr_accessor :group_properties

    # All taxes applied to the charge.
    attr_accessor :taxes

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
        :'lago_billable_metric_id' => :'lago_billable_metric_id',
        :'billable_metric_code' => :'billable_metric_code',
        :'invoice_display_name' => :'invoice_display_name',
        :'created_at' => :'created_at',
        :'charge_model' => :'charge_model',
        :'pay_in_advance' => :'pay_in_advance',
        :'invoiceable' => :'invoiceable',
        :'prorated' => :'prorated',
        :'min_amount_cents' => :'min_amount_cents',
        :'properties' => :'properties',
        :'group_properties' => :'group_properties',
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
        :'lago_billable_metric_id' => :'String',
        :'billable_metric_code' => :'String',
        :'invoice_display_name' => :'String',
        :'created_at' => :'Time',
        :'charge_model' => :'String',
        :'pay_in_advance' => :'Boolean',
        :'invoiceable' => :'Boolean',
        :'prorated' => :'Boolean',
        :'min_amount_cents' => :'Integer',
        :'properties' => :'ChargeObjectProperties',
        :'group_properties' => :'Array<GroupPropertiesObject>',
        :'taxes' => :'Array<TaxObject>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::ChargeObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::ChargeObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lago_id')
        self.lago_id = attributes[:'lago_id']
      else
        self.lago_id = nil
      end

      if attributes.key?(:'lago_billable_metric_id')
        self.lago_billable_metric_id = attributes[:'lago_billable_metric_id']
      else
        self.lago_billable_metric_id = nil
      end

      if attributes.key?(:'billable_metric_code')
        self.billable_metric_code = attributes[:'billable_metric_code']
      else
        self.billable_metric_code = nil
      end

      if attributes.key?(:'invoice_display_name')
        self.invoice_display_name = attributes[:'invoice_display_name']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'charge_model')
        self.charge_model = attributes[:'charge_model']
      else
        self.charge_model = nil
      end

      if attributes.key?(:'pay_in_advance')
        self.pay_in_advance = attributes[:'pay_in_advance']
      end

      if attributes.key?(:'invoiceable')
        self.invoiceable = attributes[:'invoiceable']
      end

      if attributes.key?(:'prorated')
        self.prorated = attributes[:'prorated']
      end

      if attributes.key?(:'min_amount_cents')
        self.min_amount_cents = attributes[:'min_amount_cents']
      end

      if attributes.key?(:'properties')
        self.properties = attributes[:'properties']
      end

      if attributes.key?(:'group_properties')
        if (value = attributes[:'group_properties']).is_a?(Array)
          self.group_properties = value
        end
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

      if @lago_billable_metric_id.nil?
        invalid_properties.push('invalid value for "lago_billable_metric_id", lago_billable_metric_id cannot be nil.')
      end

      if @billable_metric_code.nil?
        invalid_properties.push('invalid value for "billable_metric_code", billable_metric_code cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @charge_model.nil?
        invalid_properties.push('invalid value for "charge_model", charge_model cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @lago_id.nil?
      return false if @lago_billable_metric_id.nil?
      return false if @billable_metric_code.nil?
      return false if @created_at.nil?
      return false if @charge_model.nil?
      charge_model_validator = EnumAttributeValidator.new('String', ["standard", "graduated", "graduated_percentage", "package", "percentage", "volume"])
      return false unless charge_model_validator.valid?(@charge_model)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge_model Object to be assigned
    def charge_model=(charge_model)
      validator = EnumAttributeValidator.new('String', ["standard", "graduated", "graduated_percentage", "package", "percentage", "volume"])
      unless validator.valid?(charge_model)
        fail ArgumentError, "invalid value for \"charge_model\", must be one of #{validator.allowable_values}."
      end
      @charge_model = charge_model
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_id == o.lago_id &&
          lago_billable_metric_id == o.lago_billable_metric_id &&
          billable_metric_code == o.billable_metric_code &&
          invoice_display_name == o.invoice_display_name &&
          created_at == o.created_at &&
          charge_model == o.charge_model &&
          pay_in_advance == o.pay_in_advance &&
          invoiceable == o.invoiceable &&
          prorated == o.prorated &&
          min_amount_cents == o.min_amount_cents &&
          properties == o.properties &&
          group_properties == o.group_properties &&
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
      [lago_id, lago_billable_metric_id, billable_metric_code, invoice_display_name, created_at, charge_model, pay_in_advance, invoiceable, prorated, min_amount_cents, properties, group_properties, taxes].hash
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
