=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.51.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module LagoAPI
  class InvoicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a one-off invoice
    # This endpoint is used for issuing a one-off invoice.
    # @param invoice_one_off_create_input [InvoiceOneOffCreateInput] Invoice payload
    # @param [Hash] opts the optional parameters
    # @return [Invoice]
    def create_invoice(invoice_one_off_create_input, opts = {})
      data, _status_code, _headers = create_invoice_with_http_info(invoice_one_off_create_input, opts)
      data
    end

    # Create a one-off invoice
    # This endpoint is used for issuing a one-off invoice.
    # @param invoice_one_off_create_input [InvoiceOneOffCreateInput] Invoice payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invoice, Integer, Hash)>] Invoice data, response status code and response headers
    def create_invoice_with_http_info(invoice_one_off_create_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.create_invoice ...'
      end
      # verify the required parameter 'invoice_one_off_create_input' is set
      if @api_client.config.client_side_validation && invoice_one_off_create_input.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_one_off_create_input' when calling InvoicesApi.create_invoice"
      end
      # resource path
      local_var_path = '/invoices'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(invoice_one_off_create_input)

      # return_type
      return_type = opts[:debug_return_type] || 'Invoice'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.create_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#create_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download an invoice PDF
    # This endpoint is used for downloading a specific invoice PDF document.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Invoice]
    def download_invoice(lago_id, opts = {})
      data, _status_code, _headers = download_invoice_with_http_info(lago_id, opts)
      data
    end

    # Download an invoice PDF
    # This endpoint is used for downloading a specific invoice PDF document.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invoice, Integer, Hash)>] Invoice data, response status code and response headers
    def download_invoice_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.download_invoice ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling InvoicesApi.download_invoice"
      end
      # resource path
      local_var_path = '/invoices/{lago_id}/download'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Invoice'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.download_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#download_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finalize a draft invoice
    # This endpoint is used for finalizing a draft invoice.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Invoice]
    def finalize_invoice(lago_id, opts = {})
      data, _status_code, _headers = finalize_invoice_with_http_info(lago_id, opts)
      data
    end

    # Finalize a draft invoice
    # This endpoint is used for finalizing a draft invoice.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invoice, Integer, Hash)>] Invoice data, response status code and response headers
    def finalize_invoice_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.finalize_invoice ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling InvoicesApi.finalize_invoice"
      end
      # resource path
      local_var_path = '/invoices/{lago_id}/finalize'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Invoice'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.finalize_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#finalize_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all invoices
    # This endpoint is used for retrievign all invoices.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @option opts [String] :external_customer_id Unique identifier assigned to the customer in your application.
    # @option opts [Date] :issuing_date_from Filter invoices starting from a specific date.
    # @option opts [Date] :issuing_date_to Filter invoices up to a specific date.
    # @option opts [String] :status Filter invoices by status. Possible values are &#x60;draft&#x60; or &#x60;finalized&#x60;.
    # @option opts [String] :payment_status Filter invoices by payment status. Possible values are &#x60;pending&#x60;, &#x60;failed&#x60; or &#x60;succeeded&#x60;.
    # @return [InvoicesPaginated]
    def find_all_invoices(opts = {})
      data, _status_code, _headers = find_all_invoices_with_http_info(opts)
      data
    end

    # List all invoices
    # This endpoint is used for retrievign all invoices.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @option opts [String] :external_customer_id Unique identifier assigned to the customer in your application.
    # @option opts [Date] :issuing_date_from Filter invoices starting from a specific date.
    # @option opts [Date] :issuing_date_to Filter invoices up to a specific date.
    # @option opts [String] :status Filter invoices by status. Possible values are &#x60;draft&#x60; or &#x60;finalized&#x60;.
    # @option opts [String] :payment_status Filter invoices by payment status. Possible values are &#x60;pending&#x60;, &#x60;failed&#x60; or &#x60;succeeded&#x60;.
    # @return [Array<(InvoicesPaginated, Integer, Hash)>] InvoicesPaginated data, response status code and response headers
    def find_all_invoices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.find_all_invoices ...'
      end
      allowable_values = ["draft", "finalized"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      allowable_values = ["pending", "failed", "succeeded"]
      if @api_client.config.client_side_validation && opts[:'payment_status'] && !allowable_values.include?(opts[:'payment_status'])
        fail ArgumentError, "invalid value for \"payment_status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/invoices'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'external_customer_id'] = opts[:'external_customer_id'] if !opts[:'external_customer_id'].nil?
      query_params[:'issuing_date_from'] = opts[:'issuing_date_from'] if !opts[:'issuing_date_from'].nil?
      query_params[:'issuing_date_to'] = opts[:'issuing_date_to'] if !opts[:'issuing_date_to'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'payment_status'] = opts[:'payment_status'] if !opts[:'payment_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvoicesPaginated'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.find_all_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#find_all_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an invoice
    # This endpoint is used for retrieving a specific invoice that has been issued.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Invoice]
    def find_invoice(lago_id, opts = {})
      data, _status_code, _headers = find_invoice_with_http_info(lago_id, opts)
      data
    end

    # Retrieve an invoice
    # This endpoint is used for retrieving a specific invoice that has been issued.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invoice, Integer, Hash)>] Invoice data, response status code and response headers
    def find_invoice_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.find_invoice ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling InvoicesApi.find_invoice"
      end
      # resource path
      local_var_path = '/invoices/{lago_id}'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Invoice'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.find_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#find_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refresh a draft invoice
    # This endpoint is used for refreshing a draft invoice.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Invoice]
    def refresh_invoice(lago_id, opts = {})
      data, _status_code, _headers = refresh_invoice_with_http_info(lago_id, opts)
      data
    end

    # Refresh a draft invoice
    # This endpoint is used for refreshing a draft invoice.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invoice, Integer, Hash)>] Invoice data, response status code and response headers
    def refresh_invoice_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.refresh_invoice ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling InvoicesApi.refresh_invoice"
      end
      # resource path
      local_var_path = '/invoices/{lago_id}/refresh'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Invoice'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.refresh_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#refresh_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry an invoice payment
    # This endpoint resends an invoice for collection and retry a payment.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def retry_payment(lago_id, opts = {})
      retry_payment_with_http_info(lago_id, opts)
      nil
    end

    # Retry an invoice payment
    # This endpoint resends an invoice for collection and retry a payment.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def retry_payment_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.retry_payment ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling InvoicesApi.retry_payment"
      end
      # resource path
      local_var_path = '/invoices/{lago_id}/retry_payment'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.retry_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#retry_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an invoice
    # This endpoint is used for updating an existing invoice.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param invoice_update_input [InvoiceUpdateInput] Update an existing invoice
    # @param [Hash] opts the optional parameters
    # @return [Invoice]
    def update_invoice(lago_id, invoice_update_input, opts = {})
      data, _status_code, _headers = update_invoice_with_http_info(lago_id, invoice_update_input, opts)
      data
    end

    # Update an invoice
    # This endpoint is used for updating an existing invoice.
    # @param lago_id [String] Unique identifier assigned to the invoice within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the invoice’s record within the Lago system.
    # @param invoice_update_input [InvoiceUpdateInput] Update an existing invoice
    # @param [Hash] opts the optional parameters
    # @return [Array<(Invoice, Integer, Hash)>] Invoice data, response status code and response headers
    def update_invoice_with_http_info(lago_id, invoice_update_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.update_invoice ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling InvoicesApi.update_invoice"
      end
      # verify the required parameter 'invoice_update_input' is set
      if @api_client.config.client_side_validation && invoice_update_input.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_update_input' when calling InvoicesApi.update_invoice"
      end
      # resource path
      local_var_path = '/invoices/{lago_id}'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(invoice_update_input)

      # return_type
      return_type = opts[:debug_return_type] || 'Invoice'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InvoicesApi.update_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#update_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
