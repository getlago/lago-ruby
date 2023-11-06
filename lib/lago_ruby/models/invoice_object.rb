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
  class InvoiceObject
    # Unique identifier assigned to the fee within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the fee’s record within the Lago system.
    attr_accessor :lago_id

    # This ID helps in uniquely identifying and organizing the invoices associated with a specific customer. It provides a sequential numbering system specific to the customer, allowing for easy tracking and management of invoices within the customer's context.
    attr_accessor :sequential_id

    # The unique number assigned to the invoice. This number serves as a distinct identifier for the invoice and helps in differentiating it from other invoices in the system.
    attr_accessor :number

    # The date when the invoice was issued. It is provided in the ISO 8601 date format.
    attr_accessor :issuing_date

    # The payment due date for the invoice, specified in the ISO 8601 date format.
    attr_accessor :payment_due_date

    # The net payment term, expressed in days, specifies the duration within which a customer is expected to remit payment after the invoice is finalized.
    attr_accessor :net_payment_term

    # The type of invoice issued. Possible values are `subscription`, `one-off` or `credit`.
    attr_accessor :invoice_type

    # The status of the invoice. It indicates the current state of the invoice and can have two possible values: - `draft`: the invoice is in the draft state, waiting for the end of the grace period to be finalized. During this period, events can still be ingested and added to the invoice. - `finalized`: the invoice has been issued and finalized. In this state, events cannot be ingested or added to the invoice anymore.
    attr_accessor :status

    # The status of the payment associated with the invoice. It can have one of the following values: - `pending`: the payment is pending, waiting for payment processing in Stripe or when the invoice is emitted but users have not updated the payment status through the endpoint. - `succeeded`: the payment of the invoice has been successfully processed. - `failed`: the payment of the invoice has failed or encountered an error during processing.
    attr_accessor :payment_status

    attr_accessor :currency

    # The total sum of fees amount in cents. It calculates the cumulative amount of all the fees associated with the invoice, providing a consolidated value.
    attr_accessor :fees_amount_cents

    # The total sum of all coupons discounted on the invoice. It calculates the cumulative discount amount applied by coupons, expressed in cents.
    attr_accessor :coupons_amount_cents

    # The total sum of all credit notes discounted on the invoice. It calculates the cumulative discount amount applied by credit notes, expressed in cents.
    attr_accessor :credit_notes_amount_cents

    # Subtotal amount, excluding taxes, expressed in cents. This field depends on the version number. Here are the definitions based on the version: - Version 1: is equal to the sum of `fees_amount_cents`, minus `coupons_amount_cents`, and minus `prepaid_credit_amount_cents`. - Version 2: is equal to the `fees_amount_cents`. - Version 3: is equal to the `fees_amount_cents`, minus `coupons_amount_cents`
    attr_accessor :sub_total_excluding_taxes_amount_cents

    # The sum of tax amount associated with the invoice, expressed in cents.
    attr_accessor :taxes_amount_cents

    # Subtotal amount, including taxes, expressed in cents. This field depends on the version number. Here are the definitions based on the version: - Version 1: is equal to the `total_amount_cents`. - Version 2: is equal to the sum of `fees_amount_cents` and `taxes_amount_cents`. - Version 3: is equal to the sum `sub_total_excluding_taxes_amount_cents` and `taxes_amount_cents`
    attr_accessor :sub_total_including_taxes_amount_cents

    # The total sum of all prepaid credits discounted on the invoice. It calculates the cumulative discount amount applied by prepaid credits, expressed in cents.
    attr_accessor :prepaid_credit_amount_cents

    # The sum of the amount and taxes amount on the invoice, expressed in cents. It calculates the total financial value of the invoice, including both the original amount and any applicable taxes.
    attr_accessor :total_amount_cents

    attr_accessor :version_number

    # Contains the URL that provides direct access to the invoice PDF file. You can use this URL to download or view the PDF document of the invoice
    attr_accessor :file_url

    attr_accessor :customer

    attr_accessor :metadata

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
        :'sequential_id' => :'sequential_id',
        :'number' => :'number',
        :'issuing_date' => :'issuing_date',
        :'payment_due_date' => :'payment_due_date',
        :'net_payment_term' => :'net_payment_term',
        :'invoice_type' => :'invoice_type',
        :'status' => :'status',
        :'payment_status' => :'payment_status',
        :'currency' => :'currency',
        :'fees_amount_cents' => :'fees_amount_cents',
        :'coupons_amount_cents' => :'coupons_amount_cents',
        :'credit_notes_amount_cents' => :'credit_notes_amount_cents',
        :'sub_total_excluding_taxes_amount_cents' => :'sub_total_excluding_taxes_amount_cents',
        :'taxes_amount_cents' => :'taxes_amount_cents',
        :'sub_total_including_taxes_amount_cents' => :'sub_total_including_taxes_amount_cents',
        :'prepaid_credit_amount_cents' => :'prepaid_credit_amount_cents',
        :'total_amount_cents' => :'total_amount_cents',
        :'version_number' => :'version_number',
        :'file_url' => :'file_url',
        :'customer' => :'customer',
        :'metadata' => :'metadata',
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
        :'sequential_id' => :'Integer',
        :'number' => :'String',
        :'issuing_date' => :'Date',
        :'payment_due_date' => :'Date',
        :'net_payment_term' => :'Integer',
        :'invoice_type' => :'String',
        :'status' => :'String',
        :'payment_status' => :'String',
        :'currency' => :'Currency',
        :'fees_amount_cents' => :'Integer',
        :'coupons_amount_cents' => :'Integer',
        :'credit_notes_amount_cents' => :'Integer',
        :'sub_total_excluding_taxes_amount_cents' => :'Integer',
        :'taxes_amount_cents' => :'Integer',
        :'sub_total_including_taxes_amount_cents' => :'Integer',
        :'prepaid_credit_amount_cents' => :'Integer',
        :'total_amount_cents' => :'Integer',
        :'version_number' => :'Integer',
        :'file_url' => :'String',
        :'customer' => :'InvoiceObjectCustomer',
        :'metadata' => :'Array<InvoiceMetadataObject>',
        :'applied_taxes' => :'Array<InvoiceAppliedTaxObject>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::InvoiceObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::InvoiceObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lago_id')
        self.lago_id = attributes[:'lago_id']
      else
        self.lago_id = nil
      end

      if attributes.key?(:'sequential_id')
        self.sequential_id = attributes[:'sequential_id']
      else
        self.sequential_id = nil
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      else
        self.number = nil
      end

      if attributes.key?(:'issuing_date')
        self.issuing_date = attributes[:'issuing_date']
      else
        self.issuing_date = nil
      end

      if attributes.key?(:'payment_due_date')
        self.payment_due_date = attributes[:'payment_due_date']
      end

      if attributes.key?(:'net_payment_term')
        self.net_payment_term = attributes[:'net_payment_term']
      end

      if attributes.key?(:'invoice_type')
        self.invoice_type = attributes[:'invoice_type']
      else
        self.invoice_type = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      else
        self.payment_status = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'fees_amount_cents')
        self.fees_amount_cents = attributes[:'fees_amount_cents']
      else
        self.fees_amount_cents = nil
      end

      if attributes.key?(:'coupons_amount_cents')
        self.coupons_amount_cents = attributes[:'coupons_amount_cents']
      else
        self.coupons_amount_cents = nil
      end

      if attributes.key?(:'credit_notes_amount_cents')
        self.credit_notes_amount_cents = attributes[:'credit_notes_amount_cents']
      else
        self.credit_notes_amount_cents = nil
      end

      if attributes.key?(:'sub_total_excluding_taxes_amount_cents')
        self.sub_total_excluding_taxes_amount_cents = attributes[:'sub_total_excluding_taxes_amount_cents']
      else
        self.sub_total_excluding_taxes_amount_cents = nil
      end

      if attributes.key?(:'taxes_amount_cents')
        self.taxes_amount_cents = attributes[:'taxes_amount_cents']
      else
        self.taxes_amount_cents = nil
      end

      if attributes.key?(:'sub_total_including_taxes_amount_cents')
        self.sub_total_including_taxes_amount_cents = attributes[:'sub_total_including_taxes_amount_cents']
      else
        self.sub_total_including_taxes_amount_cents = nil
      end

      if attributes.key?(:'prepaid_credit_amount_cents')
        self.prepaid_credit_amount_cents = attributes[:'prepaid_credit_amount_cents']
      else
        self.prepaid_credit_amount_cents = nil
      end

      if attributes.key?(:'total_amount_cents')
        self.total_amount_cents = attributes[:'total_amount_cents']
      else
        self.total_amount_cents = nil
      end

      if attributes.key?(:'version_number')
        self.version_number = attributes[:'version_number']
      else
        self.version_number = nil
      end

      if attributes.key?(:'file_url')
        self.file_url = attributes[:'file_url']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Array)
          self.metadata = value
        end
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
      if @lago_id.nil?
        invalid_properties.push('invalid value for "lago_id", lago_id cannot be nil.')
      end

      if @sequential_id.nil?
        invalid_properties.push('invalid value for "sequential_id", sequential_id cannot be nil.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @issuing_date.nil?
        invalid_properties.push('invalid value for "issuing_date", issuing_date cannot be nil.')
      end

      if @invoice_type.nil?
        invalid_properties.push('invalid value for "invoice_type", invoice_type cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @payment_status.nil?
        invalid_properties.push('invalid value for "payment_status", payment_status cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @fees_amount_cents.nil?
        invalid_properties.push('invalid value for "fees_amount_cents", fees_amount_cents cannot be nil.')
      end

      if @coupons_amount_cents.nil?
        invalid_properties.push('invalid value for "coupons_amount_cents", coupons_amount_cents cannot be nil.')
      end

      if @credit_notes_amount_cents.nil?
        invalid_properties.push('invalid value for "credit_notes_amount_cents", credit_notes_amount_cents cannot be nil.')
      end

      if @sub_total_excluding_taxes_amount_cents.nil?
        invalid_properties.push('invalid value for "sub_total_excluding_taxes_amount_cents", sub_total_excluding_taxes_amount_cents cannot be nil.')
      end

      if @taxes_amount_cents.nil?
        invalid_properties.push('invalid value for "taxes_amount_cents", taxes_amount_cents cannot be nil.')
      end

      if @sub_total_including_taxes_amount_cents.nil?
        invalid_properties.push('invalid value for "sub_total_including_taxes_amount_cents", sub_total_including_taxes_amount_cents cannot be nil.')
      end

      if @prepaid_credit_amount_cents.nil?
        invalid_properties.push('invalid value for "prepaid_credit_amount_cents", prepaid_credit_amount_cents cannot be nil.')
      end

      if @total_amount_cents.nil?
        invalid_properties.push('invalid value for "total_amount_cents", total_amount_cents cannot be nil.')
      end

      if @version_number.nil?
        invalid_properties.push('invalid value for "version_number", version_number cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @lago_id.nil?
      return false if @sequential_id.nil?
      return false if @number.nil?
      return false if @issuing_date.nil?
      return false if @invoice_type.nil?
      invoice_type_validator = EnumAttributeValidator.new('String', ["subscription", "add_on", "credit", "one_off"])
      return false unless invoice_type_validator.valid?(@invoice_type)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["draft", "finalized"])
      return false unless status_validator.valid?(@status)
      return false if @payment_status.nil?
      payment_status_validator = EnumAttributeValidator.new('String', ["pending", "succeeded", "failed"])
      return false unless payment_status_validator.valid?(@payment_status)
      return false if @currency.nil?
      return false if @fees_amount_cents.nil?
      return false if @coupons_amount_cents.nil?
      return false if @credit_notes_amount_cents.nil?
      return false if @sub_total_excluding_taxes_amount_cents.nil?
      return false if @taxes_amount_cents.nil?
      return false if @sub_total_including_taxes_amount_cents.nil?
      return false if @prepaid_credit_amount_cents.nil?
      return false if @total_amount_cents.nil?
      return false if @version_number.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_type Object to be assigned
    def invoice_type=(invoice_type)
      validator = EnumAttributeValidator.new('String', ["subscription", "add_on", "credit", "one_off"])
      unless validator.valid?(invoice_type)
        fail ArgumentError, "invalid value for \"invoice_type\", must be one of #{validator.allowable_values}."
      end
      @invoice_type = invoice_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["draft", "finalized"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_status Object to be assigned
    def payment_status=(payment_status)
      validator = EnumAttributeValidator.new('String', ["pending", "succeeded", "failed"])
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
          sequential_id == o.sequential_id &&
          number == o.number &&
          issuing_date == o.issuing_date &&
          payment_due_date == o.payment_due_date &&
          net_payment_term == o.net_payment_term &&
          invoice_type == o.invoice_type &&
          status == o.status &&
          payment_status == o.payment_status &&
          currency == o.currency &&
          fees_amount_cents == o.fees_amount_cents &&
          coupons_amount_cents == o.coupons_amount_cents &&
          credit_notes_amount_cents == o.credit_notes_amount_cents &&
          sub_total_excluding_taxes_amount_cents == o.sub_total_excluding_taxes_amount_cents &&
          taxes_amount_cents == o.taxes_amount_cents &&
          sub_total_including_taxes_amount_cents == o.sub_total_including_taxes_amount_cents &&
          prepaid_credit_amount_cents == o.prepaid_credit_amount_cents &&
          total_amount_cents == o.total_amount_cents &&
          version_number == o.version_number &&
          file_url == o.file_url &&
          customer == o.customer &&
          metadata == o.metadata &&
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
      [lago_id, sequential_id, number, issuing_date, payment_due_date, net_payment_term, invoice_type, status, payment_status, currency, fees_amount_cents, coupons_amount_cents, credit_notes_amount_cents, sub_total_excluding_taxes_amount_cents, taxes_amount_cents, sub_total_including_taxes_amount_cents, prepaid_credit_amount_cents, total_amount_cents, version_number, file_url, customer, metadata, applied_taxes].hash
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
