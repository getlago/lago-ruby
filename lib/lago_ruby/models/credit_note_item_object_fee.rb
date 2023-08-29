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
  class CreditNoteItemObjectFee
    # Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system.
    attr_accessor :lago_id

    # Unique identifier assigned to the group that the fee belongs to
    attr_accessor :lago_group_id

    # Unique identifier assigned to the invoice that the fee belongs to
    attr_accessor :lago_invoice_id

    # Unique identifier assigned to the true-up fee when a minimum has been set to the charge. This identifier helps to distinguish and manage the true-up fee associated with the charge, which may be applicable when a minimum threshold or limit is set for the charge amount.
    attr_accessor :lago_true_up_fee_id

    # Unique identifier assigned to the parent fee on which the true-up fee is assigned. This identifier establishes the relationship between the parent fee and the associated true-up fee.
    attr_accessor :lago_true_up_parent_fee_id

    # Unique identifier assigned to the subscription, created by Lago. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (`pay_in_advance` is set to true).
    attr_accessor :lago_subscription_id

    # Unique identifier assigned to the customer, created by Lago. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (`pay_in_advance` is set to true).
    attr_accessor :lago_customer_id

    # Unique identifier assigned to the customer in your application. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (`pay_in_advance` is set to true).
    attr_accessor :external_customer_id

    # Unique identifier assigned to the subscription in your application. This field is specifically displayed when the fee type is charge and the payment for the fee is made in advance (`pay_in_advance` is set to true).
    attr_accessor :external_subscription_id

    # The cost of this specific fee, excluding any applicable taxes.
    attr_accessor :amount_cents

    attr_accessor :amount_currency

    # The cost of the tax associated with this specific fee.
    attr_accessor :taxes_amount_cents

    # The tax rate associated with this specific fee.
    attr_accessor :taxes_rate

    # The number of units used to charge the customer. This field indicates the quantity or count of units consumed or utilized in the context of the charge. It helps in determining the basis for calculating the fee or cost associated with the usage of the service or product provided to the customer.
    attr_accessor :units

    # The cost of this specific fee, including any applicable taxes.
    attr_accessor :total_amount_cents

    attr_accessor :total_amount_currency

    # The number of events that have been sent and used to charge the customer. This field indicates the count or quantity of events that have been processed and considered in the charging process.
    attr_accessor :events_count

    # Flag that indicates whether the fee was paid in advance. It serves as a boolean value, where `true` represents that the fee was paid in advance (straightaway), and `false` indicates that the fee was not paid in arrears (at the end of the period).
    attr_accessor :pay_in_advance

    # Flag that indicates whether the fee was included on the invoice. It serves as a boolean value, where `true` represents that the fee was included on the invoice, and `false` indicates that the fee was not included on the invoice.
    attr_accessor :invoiceable

    # The beginning date of the period that the fee covers. It is applicable only to `subscription` and `charge` fees. This field indicates the start date of the billing period or subscription period associated with the fee.
    attr_accessor :from_date

    # The ending date of the period that the fee covers. It is applicable only to `subscription` and `charge` fees. This field indicates the end date of the billing period or subscription period associated with the fee.
    attr_accessor :to_date

    # Indicates the payment status of the fee. It represents the current status of the payment associated with the fee. The possible values for this field are `pending`, `succeeded`, `failed` and `refunded`.
    attr_accessor :payment_status

    # The date and time when the fee was created. It is provided in Coordinated Universal Time (UTC) format.
    attr_accessor :created_at

    # The date and time when the payment for the fee was successfully processed. It is provided in Coordinated Universal Time (UTC) format.
    attr_accessor :succeeded_at

    # The date and time when the payment for the fee failed to process. It is provided in Coordinated Universal Time (UTC) format.
    attr_accessor :failed_at

    # The date and time when the payment for the fee was refunded. It is provided in Coordinated Universal Time (UTC) format
    attr_accessor :refunded_at

    # Unique identifier assigned to the transaction. This field is specifically displayed when the fee type is `charge` and the payment for the fee is made in advance (`pay_in_advance` is set to `true`).
    attr_accessor :event_transaction_id

    attr_accessor :item

    # List of fee applied taxes
    attr_accessor :applied_taxes

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
        :'lago_group_id' => :'lago_group_id',
        :'lago_invoice_id' => :'lago_invoice_id',
        :'lago_true_up_fee_id' => :'lago_true_up_fee_id',
        :'lago_true_up_parent_fee_id' => :'lago_true_up_parent_fee_id',
        :'lago_subscription_id' => :'lago_subscription_id',
        :'lago_customer_id' => :'lago_customer_id',
        :'external_customer_id' => :'external_customer_id',
        :'external_subscription_id' => :'external_subscription_id',
        :'amount_cents' => :'amount_cents',
        :'amount_currency' => :'amount_currency',
        :'taxes_amount_cents' => :'taxes_amount_cents',
        :'taxes_rate' => :'taxes_rate',
        :'units' => :'units',
        :'total_amount_cents' => :'total_amount_cents',
        :'total_amount_currency' => :'total_amount_currency',
        :'events_count' => :'events_count',
        :'pay_in_advance' => :'pay_in_advance',
        :'invoiceable' => :'invoiceable',
        :'from_date' => :'from_date',
        :'to_date' => :'to_date',
        :'payment_status' => :'payment_status',
        :'created_at' => :'created_at',
        :'succeeded_at' => :'succeeded_at',
        :'failed_at' => :'failed_at',
        :'refunded_at' => :'refunded_at',
        :'event_transaction_id' => :'event_transaction_id',
        :'item' => :'item',
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
        :'lago_id' => :'String',
        :'lago_group_id' => :'String',
        :'lago_invoice_id' => :'String',
        :'lago_true_up_fee_id' => :'String',
        :'lago_true_up_parent_fee_id' => :'String',
        :'lago_subscription_id' => :'String',
        :'lago_customer_id' => :'String',
        :'external_customer_id' => :'String',
        :'external_subscription_id' => :'String',
        :'amount_cents' => :'Integer',
        :'amount_currency' => :'Currency',
        :'taxes_amount_cents' => :'Integer',
        :'taxes_rate' => :'Float',
        :'units' => :'String',
        :'total_amount_cents' => :'Integer',
        :'total_amount_currency' => :'Currency',
        :'events_count' => :'Integer',
        :'pay_in_advance' => :'Boolean',
        :'invoiceable' => :'Boolean',
        :'from_date' => :'Time',
        :'to_date' => :'Time',
        :'payment_status' => :'String',
        :'created_at' => :'Time',
        :'succeeded_at' => :'Time',
        :'failed_at' => :'Time',
        :'refunded_at' => :'Time',
        :'event_transaction_id' => :'String',
        :'item' => :'FeeObjectItem',
        :'applied_taxes' => :'Array<FeeAppliedTaxObject>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'lago_id',
        :'lago_group_id',
        :'lago_invoice_id',
        :'lago_true_up_fee_id',
        :'lago_true_up_parent_fee_id',
        :'lago_subscription_id',
        :'lago_customer_id',
        :'external_customer_id',
        :'external_subscription_id',
        :'from_date',
        :'to_date',
        :'created_at',
        :'succeeded_at',
        :'failed_at',
        :'refunded_at',
        :'event_transaction_id',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FeeObject'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::CreditNoteItemObjectFee` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::CreditNoteItemObjectFee`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lago_id')
        self.lago_id = attributes[:'lago_id']
      end

      if attributes.key?(:'lago_group_id')
        self.lago_group_id = attributes[:'lago_group_id']
      end

      if attributes.key?(:'lago_invoice_id')
        self.lago_invoice_id = attributes[:'lago_invoice_id']
      end

      if attributes.key?(:'lago_true_up_fee_id')
        self.lago_true_up_fee_id = attributes[:'lago_true_up_fee_id']
      end

      if attributes.key?(:'lago_true_up_parent_fee_id')
        self.lago_true_up_parent_fee_id = attributes[:'lago_true_up_parent_fee_id']
      end

      if attributes.key?(:'lago_subscription_id')
        self.lago_subscription_id = attributes[:'lago_subscription_id']
      end

      if attributes.key?(:'lago_customer_id')
        self.lago_customer_id = attributes[:'lago_customer_id']
      end

      if attributes.key?(:'external_customer_id')
        self.external_customer_id = attributes[:'external_customer_id']
      end

      if attributes.key?(:'external_subscription_id')
        self.external_subscription_id = attributes[:'external_subscription_id']
      end

      if attributes.key?(:'amount_cents')
        self.amount_cents = attributes[:'amount_cents']
      else
        self.amount_cents = nil
      end

      if attributes.key?(:'amount_currency')
        self.amount_currency = attributes[:'amount_currency']
      else
        self.amount_currency = nil
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

      if attributes.key?(:'units')
        self.units = attributes[:'units']
      else
        self.units = nil
      end

      if attributes.key?(:'total_amount_cents')
        self.total_amount_cents = attributes[:'total_amount_cents']
      else
        self.total_amount_cents = nil
      end

      if attributes.key?(:'total_amount_currency')
        self.total_amount_currency = attributes[:'total_amount_currency']
      else
        self.total_amount_currency = nil
      end

      if attributes.key?(:'events_count')
        self.events_count = attributes[:'events_count']
      end

      if attributes.key?(:'pay_in_advance')
        self.pay_in_advance = attributes[:'pay_in_advance']
      else
        self.pay_in_advance = nil
      end

      if attributes.key?(:'invoiceable')
        self.invoiceable = attributes[:'invoiceable']
      else
        self.invoiceable = nil
      end

      if attributes.key?(:'from_date')
        self.from_date = attributes[:'from_date']
      end

      if attributes.key?(:'to_date')
        self.to_date = attributes[:'to_date']
      end

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      else
        self.payment_status = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'succeeded_at')
        self.succeeded_at = attributes[:'succeeded_at']
      end

      if attributes.key?(:'failed_at')
        self.failed_at = attributes[:'failed_at']
      end

      if attributes.key?(:'refunded_at')
        self.refunded_at = attributes[:'refunded_at']
      end

      if attributes.key?(:'event_transaction_id')
        self.event_transaction_id = attributes[:'event_transaction_id']
      end

      if attributes.key?(:'item')
        self.item = attributes[:'item']
      else
        self.item = nil
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
      if @amount_cents.nil?
        invalid_properties.push('invalid value for "amount_cents", amount_cents cannot be nil.')
      end

      if @amount_currency.nil?
        invalid_properties.push('invalid value for "amount_currency", amount_currency cannot be nil.')
      end

      if @taxes_amount_cents.nil?
        invalid_properties.push('invalid value for "taxes_amount_cents", taxes_amount_cents cannot be nil.')
      end

      if @taxes_rate.nil?
        invalid_properties.push('invalid value for "taxes_rate", taxes_rate cannot be nil.')
      end

      if @units.nil?
        invalid_properties.push('invalid value for "units", units cannot be nil.')
      end

      if @total_amount_cents.nil?
        invalid_properties.push('invalid value for "total_amount_cents", total_amount_cents cannot be nil.')
      end

      if @total_amount_currency.nil?
        invalid_properties.push('invalid value for "total_amount_currency", total_amount_currency cannot be nil.')
      end

      if @pay_in_advance.nil?
        invalid_properties.push('invalid value for "pay_in_advance", pay_in_advance cannot be nil.')
      end

      if @invoiceable.nil?
        invalid_properties.push('invalid value for "invoiceable", invoiceable cannot be nil.')
      end

      if @payment_status.nil?
        invalid_properties.push('invalid value for "payment_status", payment_status cannot be nil.')
      end

      if @item.nil?
        invalid_properties.push('invalid value for "item", item cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @amount_cents.nil?
      return false if @amount_currency.nil?
      return false if @taxes_amount_cents.nil?
      return false if @taxes_rate.nil?
      return false if @units.nil?
      return false if @total_amount_cents.nil?
      return false if @total_amount_currency.nil?
      return false if @pay_in_advance.nil?
      return false if @invoiceable.nil?
      return false if @payment_status.nil?
      payment_status_validator = EnumAttributeValidator.new('String', ["pending", "succeeded", "failed", "refunded"])
      return false unless payment_status_validator.valid?(@payment_status)
      return false if @item.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_status Object to be assigned
    def payment_status=(payment_status)
      validator = EnumAttributeValidator.new('String', ["pending", "succeeded", "failed", "refunded"])
      unless validator.valid?(payment_status)
        fail ArgumentError, "invalid value for \"payment_status\", must be one of #{validator.allowable_values}."
      end
      @payment_status = payment_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_id == o.lago_id &&
          lago_group_id == o.lago_group_id &&
          lago_invoice_id == o.lago_invoice_id &&
          lago_true_up_fee_id == o.lago_true_up_fee_id &&
          lago_true_up_parent_fee_id == o.lago_true_up_parent_fee_id &&
          lago_subscription_id == o.lago_subscription_id &&
          lago_customer_id == o.lago_customer_id &&
          external_customer_id == o.external_customer_id &&
          external_subscription_id == o.external_subscription_id &&
          amount_cents == o.amount_cents &&
          amount_currency == o.amount_currency &&
          taxes_amount_cents == o.taxes_amount_cents &&
          taxes_rate == o.taxes_rate &&
          units == o.units &&
          total_amount_cents == o.total_amount_cents &&
          total_amount_currency == o.total_amount_currency &&
          events_count == o.events_count &&
          pay_in_advance == o.pay_in_advance &&
          invoiceable == o.invoiceable &&
          from_date == o.from_date &&
          to_date == o.to_date &&
          payment_status == o.payment_status &&
          created_at == o.created_at &&
          succeeded_at == o.succeeded_at &&
          failed_at == o.failed_at &&
          refunded_at == o.refunded_at &&
          event_transaction_id == o.event_transaction_id &&
          item == o.item &&
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
      [lago_id, lago_group_id, lago_invoice_id, lago_true_up_fee_id, lago_true_up_parent_fee_id, lago_subscription_id, lago_customer_id, external_customer_id, external_subscription_id, amount_cents, amount_currency, taxes_amount_cents, taxes_rate, units, total_amount_cents, total_amount_currency, events_count, pay_in_advance, invoiceable, from_date, to_date, payment_status, created_at, succeeded_at, failed_at, refunded_at, event_transaction_id, item, applied_taxes].hash
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
