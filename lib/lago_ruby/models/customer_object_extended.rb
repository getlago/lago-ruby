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
  class CustomerObjectExtended
    # Unique identifier assigned to the customer within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the customer's record within the Lago system
    attr_accessor :lago_id

    # The unique identifier assigned to the customer within the organization's scope. This identifier is used to track and reference the customer's order of creation within the organization's system. It ensures that each customer has a distinct `sequential_id`` associated with them, allowing for easy identification and sorting based on the order of creation
    attr_accessor :sequential_id

    # A concise and unique identifier for the customer, formed by combining the Organization's `name`, `id`, and customer's `sequential_id`
    attr_accessor :slug

    # The customer external unique identifier (provided by your own application)
    attr_accessor :external_id

    # The first line of the billing address
    attr_accessor :address_line1

    # The second line of the billing address
    attr_accessor :address_line2

    attr_accessor :applicable_timezone

    # The city of the customer's billing address
    attr_accessor :city

    attr_accessor :country

    attr_accessor :currency

    # The email of the customer
    attr_accessor :email

    # The legal company name of the customer
    attr_accessor :legal_name

    # The legal company number of the customer
    attr_accessor :legal_number

    # The logo URL of the customer
    attr_accessor :logo_url

    # The full name of the customer
    attr_accessor :name

    # The phone number of the customer
    attr_accessor :phone

    # The state of the customer's billing address
    attr_accessor :state

    # The tax identification number of the customer
    attr_accessor :tax_identification_number

    attr_accessor :timezone

    # The custom website URL of the customer
    attr_accessor :url

    # The zipcode of the customer's billing address
    attr_accessor :zipcode

    # The net payment term, expressed in days, specifies the duration within which a customer is expected to remit payment after the invoice is finalized.
    attr_accessor :net_payment_term

    # The date of the customer creation, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). The creation_date provides a standardized and internationally recognized timestamp for when the customer object was created
    attr_accessor :created_at

    # The date of the customer update, represented in ISO 8601 datetime format and expressed in Coordinated Universal Time (UTC). The update_date provides a standardized and internationally recognized timestamp for when the customer object was updated
    attr_accessor :updated_at

    attr_accessor :billing_configuration

    attr_accessor :metadata

    # List of customer taxes
    attr_accessor :taxes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'lago_id' => :'lago_id',
        :'sequential_id' => :'sequential_id',
        :'slug' => :'slug',
        :'external_id' => :'external_id',
        :'address_line1' => :'address_line1',
        :'address_line2' => :'address_line2',
        :'applicable_timezone' => :'applicable_timezone',
        :'city' => :'city',
        :'country' => :'country',
        :'currency' => :'currency',
        :'email' => :'email',
        :'legal_name' => :'legal_name',
        :'legal_number' => :'legal_number',
        :'logo_url' => :'logo_url',
        :'name' => :'name',
        :'phone' => :'phone',
        :'state' => :'state',
        :'tax_identification_number' => :'tax_identification_number',
        :'timezone' => :'timezone',
        :'url' => :'url',
        :'zipcode' => :'zipcode',
        :'net_payment_term' => :'net_payment_term',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'billing_configuration' => :'billing_configuration',
        :'metadata' => :'metadata',
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
        :'sequential_id' => :'Integer',
        :'slug' => :'String',
        :'external_id' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'applicable_timezone' => :'Timezone',
        :'city' => :'String',
        :'country' => :'Country',
        :'currency' => :'Currency',
        :'email' => :'String',
        :'legal_name' => :'String',
        :'legal_number' => :'String',
        :'logo_url' => :'String',
        :'name' => :'String',
        :'phone' => :'String',
        :'state' => :'String',
        :'tax_identification_number' => :'String',
        :'timezone' => :'Timezone',
        :'url' => :'String',
        :'zipcode' => :'String',
        :'net_payment_term' => :'Integer',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'billing_configuration' => :'CustomerBillingConfiguration',
        :'metadata' => :'Array<CustomerMetadata>',
        :'taxes' => :'Array<TaxObject>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'address_line1',
        :'address_line2',
        :'city',
        :'email',
        :'legal_name',
        :'legal_number',
        :'logo_url',
        :'name',
        :'phone',
        :'state',
        :'tax_identification_number',
        :'url',
        :'zipcode',
        :'net_payment_term',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CustomerObject'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LagoAPI::CustomerObjectExtended` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LagoAPI::CustomerObjectExtended`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      else
        self.slug = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      else
        self.external_id = nil
      end

      if attributes.key?(:'address_line1')
        self.address_line1 = attributes[:'address_line1']
      end

      if attributes.key?(:'address_line2')
        self.address_line2 = attributes[:'address_line2']
      end

      if attributes.key?(:'applicable_timezone')
        self.applicable_timezone = attributes[:'applicable_timezone']
      else
        self.applicable_timezone = nil
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'legal_name')
        self.legal_name = attributes[:'legal_name']
      end

      if attributes.key?(:'legal_number')
        self.legal_number = attributes[:'legal_number']
      end

      if attributes.key?(:'logo_url')
        self.logo_url = attributes[:'logo_url']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'tax_identification_number')
        self.tax_identification_number = attributes[:'tax_identification_number']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'zipcode')
        self.zipcode = attributes[:'zipcode']
      end

      if attributes.key?(:'net_payment_term')
        self.net_payment_term = attributes[:'net_payment_term']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'billing_configuration')
        self.billing_configuration = attributes[:'billing_configuration']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Array)
          self.metadata = value
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

      if @sequential_id.nil?
        invalid_properties.push('invalid value for "sequential_id", sequential_id cannot be nil.')
      end

      if @slug.nil?
        invalid_properties.push('invalid value for "slug", slug cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if @applicable_timezone.nil?
        invalid_properties.push('invalid value for "applicable_timezone", applicable_timezone cannot be nil.')
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
      return false if @sequential_id.nil?
      return false if @slug.nil?
      return false if @external_id.nil?
      return false if @applicable_timezone.nil?
      return false if @created_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lago_id == o.lago_id &&
          sequential_id == o.sequential_id &&
          slug == o.slug &&
          external_id == o.external_id &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          applicable_timezone == o.applicable_timezone &&
          city == o.city &&
          country == o.country &&
          currency == o.currency &&
          email == o.email &&
          legal_name == o.legal_name &&
          legal_number == o.legal_number &&
          logo_url == o.logo_url &&
          name == o.name &&
          phone == o.phone &&
          state == o.state &&
          tax_identification_number == o.tax_identification_number &&
          timezone == o.timezone &&
          url == o.url &&
          zipcode == o.zipcode &&
          net_payment_term == o.net_payment_term &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          billing_configuration == o.billing_configuration &&
          metadata == o.metadata &&
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
      [lago_id, sequential_id, slug, external_id, address_line1, address_line2, applicable_timezone, city, country, currency, email, legal_name, legal_number, logo_url, name, phone, state, tax_identification_number, timezone, url, zipcode, net_payment_term, created_at, updated_at, billing_configuration, metadata, taxes].hash
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
