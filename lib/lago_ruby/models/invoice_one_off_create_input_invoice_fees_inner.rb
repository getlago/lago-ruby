=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.49.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module LagoAPI
  class InvoiceOneOffCreateInputInvoiceFeesInner
    # The code of the add-on used as invoice item.
    attr_accessor :add_on_code

    # Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name.
    attr_accessor :invoice_display_name

    # The amount of the fee per unit, expressed in cents. By default, the amount of the add-on is used.
    attr_accessor :unit_amount_cents

    # The quantity of units associated with the fee. By default, only 1 unit is added to the invoice.
    attr_accessor :units

    # This is a description
    attr_accessor :description

    # List of unique code used to identify the taxes.
    attr_accessor :tax_codes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'add_on_code' => :'add_on_code',
        :'invoice_display_name' => :'invoice_display_name',
        :'unit_amount_cents' => :'unit_amount_cents',
        :'units' => :'units',
        :'description' => :'description',
        :'tax_codes' => :'tax_codes'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'add_on_code' => :'String',
        :'invoice_display_name' => :'String',
        :'unit_amount_cents' => :'Integer',
        :'units' => :'String',
        :'description' => :'String',
        :'tax_codes' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'unit_amount_cents',
        :'units',
        :'description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::InvoiceOneOffCreateInputInvoiceFeesInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::InvoiceOneOffCreateInputInvoiceFeesInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'add_on_code')
        self.add_on_code = attributes[:'add_on_code']
      else
        self.add_on_code = nil
      end

      if attributes.key?(:'invoice_display_name')
        self.invoice_display_name = attributes[:'invoice_display_name']
      end

      if attributes.key?(:'unit_amount_cents')
        self.unit_amount_cents = attributes[:'unit_amount_cents']
      end

      if attributes.key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'tax_codes')
        if (value = attributes[:'tax_codes']).is_a?(Array)
          self.tax_codes = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @add_on_code.nil?
        invalid_properties.push('invalid value for "add_on_code", add_on_code cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !@units.nil? && @units !~ pattern
        invalid_properties.push("invalid value for \"units\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @add_on_code.nil?
      return false if !@units.nil? && @units !~ Regexp.new(/^[0-9]+.?[0-9]*$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] units Value to be assigned
    def units=(units)
      pattern = Regexp.new(/^[0-9]+.?[0-9]*$/)
      if !units.nil? && units !~ pattern
        fail ArgumentError, "invalid value for \"units\", must conform to the pattern #{pattern}."
      end

      @units = units
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          add_on_code == o.add_on_code &&
          invoice_display_name == o.invoice_display_name &&
          unit_amount_cents == o.unit_amount_cents &&
          units == o.units &&
          description == o.description &&
          tax_codes == o.tax_codes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [add_on_code, invoice_display_name, unit_amount_cents, units, description, tax_codes].hash
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
