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
  class CreditNoteEstimatedEstimatedCreditNote
    # Unique identifier assigned to the invoice that the credit note belongs to
    attr_accessor :lago_invoice_id

    # The invoice unique number, related to the credit note.
    attr_accessor :invoice_number

    attr_accessor :currency

    # The tax amount of the credit note, expressed in cents.
    attr_accessor :taxes_amount_cents

    # The tax rate associated with this specific credit note.
    attr_accessor :taxes_rate

    # The subtotal of the credit note excluding any applicable taxes, expressed in cents.
    attr_accessor :sub_total_excluding_taxes_amount_cents

    # The credited amount of the credit note, expressed in cents.
    attr_accessor :max_creditable_amount_cents

    # The refunded amount of the credit note, expressed in cents.
    attr_accessor :max_refundable_amount_cents

    # The pro-rated amount of the coupons applied to the source invoice.
    attr_accessor :coupons_adjustment_amount_cents

    # Array of credit note’s items.
    attr_accessor :items

    attr_accessor :applied_taxes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'lago_invoice_id' => :'lago_invoice_id',
        :'invoice_number' => :'invoice_number',
        :'currency' => :'currency',
        :'taxes_amount_cents' => :'taxes_amount_cents',
        :'taxes_rate' => :'taxes_rate',
        :'sub_total_excluding_taxes_amount_cents' => :'sub_total_excluding_taxes_amount_cents',
        :'max_creditable_amount_cents' => :'max_creditable_amount_cents',
        :'max_refundable_amount_cents' => :'max_refundable_amount_cents',
        :'coupons_adjustment_amount_cents' => :'coupons_adjustment_amount_cents',
        :'items' => :'items',
        :'applied_taxes' => :'applied_taxes'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'lago_invoice_id' => :'String',
        :'invoice_number' => :'String',
        :'currency' => :'Currency',
        :'taxes_amount_cents' => :'Integer',
        :'taxes_rate' => :'Float',
        :'sub_total_excluding_taxes_amount_cents' => :'Integer',
        :'max_creditable_amount_cents' => :'Integer',
        :'max_refundable_amount_cents' => :'Integer',
        :'coupons_adjustment_amount_cents' => :'Integer',
        :'items' => :'Array<CreditNoteEstimatedEstimatedCreditNoteItemsInner>',
        :'applied_taxes' => :'Array<CreditNoteEstimatedEstimatedCreditNoteAppliedTaxesInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::CreditNoteEstimatedEstimatedCreditNote` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::CreditNoteEstimatedEstimatedCreditNote`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lago_invoice_id')
        self.lago_invoice_id = attributes[:'lago_invoice_id']
      else
        self.lago_invoice_id = nil
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      else
        self.invoice_number = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'taxes_amount_cents')
        self.taxes_amount_cents = attributes[:'taxes_amount_cents']
      else
        self.taxes_amount_cents = nil
      end

      if attributes.key?(:'taxes_rate')
        self.taxes_rate = attributes[:'taxes_rate']
      else
        self.taxes_rate = nil
      end

      if attributes.key?(:'sub_total_excluding_taxes_amount_cents')
        self.sub_total_excluding_taxes_amount_cents = attributes[:'sub_total_excluding_taxes_amount_cents']
      else
        self.sub_total_excluding_taxes_amount_cents = nil
      end

      if attributes.key?(:'max_creditable_amount_cents')
        self.max_creditable_amount_cents = attributes[:'max_creditable_amount_cents']
      else
        self.max_creditable_amount_cents = nil
      end

      if attributes.key?(:'max_refundable_amount_cents')
        self.max_refundable_amount_cents = attributes[:'max_refundable_amount_cents']
      else
        self.max_refundable_amount_cents = nil
      end

      if attributes.key?(:'coupons_adjustment_amount_cents')
        self.coupons_adjustment_amount_cents = attributes[:'coupons_adjustment_amount_cents']
      else
        self.coupons_adjustment_amount_cents = nil
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      else
        self.items = nil
      end

      if attributes.key?(:'applied_taxes')
        if (value = attributes[:'applied_taxes']).is_a?(Array)
          self.applied_taxes = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @lago_invoice_id.nil?
        invalid_properties.push('invalid value for "lago_invoice_id", lago_invoice_id cannot be nil.')
      end

      if @invoice_number.nil?
        invalid_properties.push('invalid value for "invoice_number", invoice_number cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @taxes_amount_cents.nil?
        invalid_properties.push('invalid value for "taxes_amount_cents", taxes_amount_cents cannot be nil.')
      end

      if @taxes_rate.nil?
        invalid_properties.push('invalid value for "taxes_rate", taxes_rate cannot be nil.')
      end

      if @sub_total_excluding_taxes_amount_cents.nil?
        invalid_properties.push('invalid value for "sub_total_excluding_taxes_amount_cents", sub_total_excluding_taxes_amount_cents cannot be nil.')
      end

      if @max_creditable_amount_cents.nil?
        invalid_properties.push('invalid value for "max_creditable_amount_cents", max_creditable_amount_cents cannot be nil.')
      end

      if @max_refundable_amount_cents.nil?
        invalid_properties.push('invalid value for "max_refundable_amount_cents", max_refundable_amount_cents cannot be nil.')
      end

      if @coupons_adjustment_amount_cents.nil?
        invalid_properties.push('invalid value for "coupons_adjustment_amount_cents", coupons_adjustment_amount_cents cannot be nil.')
      end

      if @items.nil?
        invalid_properties.push('invalid value for "items", items cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @lago_invoice_id.nil?
      return false if @invoice_number.nil?
      return false if @currency.nil?
      return false if @taxes_amount_cents.nil?
      return false if @taxes_rate.nil?
      return false if @sub_total_excluding_taxes_amount_cents.nil?
      return false if @max_creditable_amount_cents.nil?
      return false if @max_refundable_amount_cents.nil?
      return false if @coupons_adjustment_amount_cents.nil?
      return false if @items.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_invoice_id == o.lago_invoice_id &&
          invoice_number == o.invoice_number &&
          currency == o.currency &&
          taxes_amount_cents == o.taxes_amount_cents &&
          taxes_rate == o.taxes_rate &&
          sub_total_excluding_taxes_amount_cents == o.sub_total_excluding_taxes_amount_cents &&
          max_creditable_amount_cents == o.max_creditable_amount_cents &&
          max_refundable_amount_cents == o.max_refundable_amount_cents &&
          coupons_adjustment_amount_cents == o.coupons_adjustment_amount_cents &&
          items == o.items &&
          applied_taxes == o.applied_taxes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lago_invoice_id, invoice_number, currency, taxes_amount_cents, taxes_rate, sub_total_excluding_taxes_amount_cents, max_creditable_amount_cents, max_refundable_amount_cents, coupons_adjustment_amount_cents, items, applied_taxes].hash
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
