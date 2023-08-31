=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.46.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

require 'cgi'

module LagoAPI
  class AddOnsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Apply an add-on to a customer
    # Apply an add-on to a customer
    # @param applied_add_on_input [AppliedAddOnInput] Apply add-on payload
    # @param [Hash] opts the optional parameters
    # @return [AppliedAddOn]
    def apply_add_on(applied_add_on_input, opts = {})
      data, _status_code, _headers = apply_add_on_with_http_info(applied_add_on_input, opts)
      data
    end

    # Apply an add-on to a customer
    # Apply an add-on to a customer
    # @param applied_add_on_input [AppliedAddOnInput] Apply add-on payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppliedAddOn, Integer, Hash)>] AppliedAddOn data, response status code and response headers
    def apply_add_on_with_http_info(applied_add_on_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.apply_add_on ...'
      end
      # verify the required parameter 'applied_add_on_input' is set
      if @api_client.config.client_side_validation && applied_add_on_input.nil?
        fail ArgumentError, "Missing the required parameter 'applied_add_on_input' when calling AddOnsApi.apply_add_on"
      end
      # resource path
      local_var_path = '/applied_add_ons'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(applied_add_on_input)

      # return_type
      return_type = opts[:debug_return_type] || 'AppliedAddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.apply_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#apply_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an add-on
    # This endpoint is used to create an add-on that can be then attached to a one-off invoice.
    # @param add_on_create_input [AddOnCreateInput] Add-on payload
    # @param [Hash] opts the optional parameters
    # @return [AddOn]
    def create_add_on(add_on_create_input, opts = {})
      data, _status_code, _headers = create_add_on_with_http_info(add_on_create_input, opts)
      data
    end

    # Create an add-on
    # This endpoint is used to create an add-on that can be then attached to a one-off invoice.
    # @param add_on_create_input [AddOnCreateInput] Add-on payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddOn, Integer, Hash)>] AddOn data, response status code and response headers
    def create_add_on_with_http_info(add_on_create_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.create_add_on ...'
      end
      # verify the required parameter 'add_on_create_input' is set
      if @api_client.config.client_side_validation && add_on_create_input.nil?
        fail ArgumentError, "Missing the required parameter 'add_on_create_input' when calling AddOnsApi.create_add_on"
      end
      # resource path
      local_var_path = '/add_ons'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_on_create_input)

      # return_type
      return_type = opts[:debug_return_type] || 'AddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.create_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#create_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an add-on
    # This endpoint is used to delete an existing add-on.
    # @param code [String] Unique code used to identify the add-on.
    # @param [Hash] opts the optional parameters
    # @return [AddOn]
    def destroy_add_on(code, opts = {})
      data, _status_code, _headers = destroy_add_on_with_http_info(code, opts)
      data
    end

    # Delete an add-on
    # This endpoint is used to delete an existing add-on.
    # @param code [String] Unique code used to identify the add-on.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddOn, Integer, Hash)>] AddOn data, response status code and response headers
    def destroy_add_on_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.destroy_add_on ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling AddOnsApi.destroy_add_on"
      end
      # resource path
      local_var_path = '/add_ons/{code}'.sub('{' + 'code' + '}', CGI.escape(code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.destroy_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#destroy_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an add-on
    # This endpoint is used to retrieve a specific add-on.
    # @param code [String] Unique code used to identify the add-on.
    # @param [Hash] opts the optional parameters
    # @return [AddOn]
    def find_add_on(code, opts = {})
      data, _status_code, _headers = find_add_on_with_http_info(code, opts)
      data
    end

    # Retrieve an add-on
    # This endpoint is used to retrieve a specific add-on.
    # @param code [String] Unique code used to identify the add-on.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddOn, Integer, Hash)>] AddOn data, response status code and response headers
    def find_add_on_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.find_add_on ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling AddOnsApi.find_add_on"
      end
      # resource path
      local_var_path = '/add_ons/{code}'.sub('{' + 'code' + '}', CGI.escape(code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.find_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#find_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all add-ons
    # This endpoint is used to list all existing add-ons.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @return [AddOnsPaginated]
    def find_all_add_ons(opts = {})
      data, _status_code, _headers = find_all_add_ons_with_http_info(opts)
      data
    end

    # List all add-ons
    # This endpoint is used to list all existing add-ons.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @return [Array<(AddOnsPaginated, Integer, Hash)>] AddOnsPaginated data, response status code and response headers
    def find_all_add_ons_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.find_all_add_ons ...'
      end
      # resource path
      local_var_path = '/add_ons'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AddOnsPaginated'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.find_all_add_ons",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#find_all_add_ons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an add-on
    # This endpoint is used to update an existing add-on.
    # @param code [String] Unique code used to identify the add-on.
    # @param add_on_update_input [AddOnUpdateInput] Add-on payload
    # @param [Hash] opts the optional parameters
    # @return [AddOn]
    def update_add_on(code, add_on_update_input, opts = {})
      data, _status_code, _headers = update_add_on_with_http_info(code, add_on_update_input, opts)
      data
    end

    # Update an add-on
    # This endpoint is used to update an existing add-on.
    # @param code [String] Unique code used to identify the add-on.
    # @param add_on_update_input [AddOnUpdateInput] Add-on payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddOn, Integer, Hash)>] AddOn data, response status code and response headers
    def update_add_on_with_http_info(code, add_on_update_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddOnsApi.update_add_on ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling AddOnsApi.update_add_on"
      end
      # verify the required parameter 'add_on_update_input' is set
      if @api_client.config.client_side_validation && add_on_update_input.nil?
        fail ArgumentError, "Missing the required parameter 'add_on_update_input' when calling AddOnsApi.update_add_on"
      end
      # resource path
      local_var_path = '/add_ons/{code}'.sub('{' + 'code' + '}', CGI.escape(code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_on_update_input)

      # return_type
      return_type = opts[:debug_return_type] || 'AddOn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AddOnsApi.update_add_on",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddOnsApi#update_add_on\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
