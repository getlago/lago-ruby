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
  class CreditNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a credit note
    # This endpoint creates a new credit note.
    # @param credit_note_create_input [CreditNoteCreateInput] Credit note payload
    # @param [Hash] opts the optional parameters
    # @return [CreditNote]
    def create_credit_note(credit_note_create_input, opts = {})
      data, _status_code, _headers = create_credit_note_with_http_info(credit_note_create_input, opts)
      data
    end

    # Create a credit note
    # This endpoint creates a new credit note.
    # @param credit_note_create_input [CreditNoteCreateInput] Credit note payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNote, Integer, Hash)>] CreditNote data, response status code and response headers
    def create_credit_note_with_http_info(credit_note_create_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotesApi.create_credit_note ...'
      end
      # verify the required parameter 'credit_note_create_input' is set
      if @api_client.config.client_side_validation && credit_note_create_input.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_create_input' when calling CreditNotesApi.create_credit_note"
      end
      # resource path
      local_var_path = '/credit_notes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(credit_note_create_input)

      # return_type
      return_type = opts[:debug_return_type] || 'CreditNote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditNotesApi.create_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotesApi#create_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a credit note PDF
    # This endpoint downloads the PDF of an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param [Hash] opts the optional parameters
    # @return [CreditNote]
    def download_credit_note(lago_id, opts = {})
      data, _status_code, _headers = download_credit_note_with_http_info(lago_id, opts)
      data
    end

    # Download a credit note PDF
    # This endpoint downloads the PDF of an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNote, Integer, Hash)>] CreditNote data, response status code and response headers
    def download_credit_note_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotesApi.download_credit_note ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling CreditNotesApi.download_credit_note"
      end
      # resource path
      local_var_path = '/credit_notes/{lago_id}/download'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditNote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditNotesApi.download_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotesApi#download_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Estimate amounts for a new credit note
    # This endpoint allows you to retrieve amounts for a new credit note creation.
    # @param [Hash] opts the optional parameters
    # @option opts [CreditNoteEstimateInput] :credit_note_estimate_input Credit note estimate payload
    # @return [CreditNoteEstimated]
    def estimate_credit_note(opts = {})
      data, _status_code, _headers = estimate_credit_note_with_http_info(opts)
      data
    end

    # Estimate amounts for a new credit note
    # This endpoint allows you to retrieve amounts for a new credit note creation.
    # @param [Hash] opts the optional parameters
    # @option opts [CreditNoteEstimateInput] :credit_note_estimate_input Credit note estimate payload
    # @return [Array<(CreditNoteEstimated, Integer, Hash)>] CreditNoteEstimated data, response status code and response headers
    def estimate_credit_note_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotesApi.estimate_credit_note ...'
      end
      # resource path
      local_var_path = '/credit_notes/estimate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'credit_note_estimate_input'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreditNoteEstimated'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditNotesApi.estimate_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotesApi#estimate_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all credit notes
    # This endpoint list all existing credit notes.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @option opts [String] :external_customer_id Unique identifier assigned to the customer in your application.
    # @return [CreditNotes]
    def find_all_credit_notes(opts = {})
      data, _status_code, _headers = find_all_credit_notes_with_http_info(opts)
      data
    end

    # List all credit notes
    # This endpoint list all existing credit notes.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @option opts [String] :external_customer_id Unique identifier assigned to the customer in your application.
    # @return [Array<(CreditNotes, Integer, Hash)>] CreditNotes data, response status code and response headers
    def find_all_credit_notes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotesApi.find_all_credit_notes ...'
      end
      # resource path
      local_var_path = '/credit_notes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'external_customer_id'] = opts[:'external_customer_id'] if !opts[:'external_customer_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreditNotes'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditNotesApi.find_all_credit_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotesApi#find_all_credit_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a credit note
    # This endpoint retrieves an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param [Hash] opts the optional parameters
    # @return [CreditNote]
    def find_credit_note(lago_id, opts = {})
      data, _status_code, _headers = find_credit_note_with_http_info(lago_id, opts)
      data
    end

    # Retrieve a credit note
    # This endpoint retrieves an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNote, Integer, Hash)>] CreditNote data, response status code and response headers
    def find_credit_note_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotesApi.find_credit_note ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling CreditNotesApi.find_credit_note"
      end
      # resource path
      local_var_path = '/credit_notes/{lago_id}'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditNote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditNotesApi.find_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotesApi#find_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a credit note
    # This endpoint updates an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param credit_note_update_input [CreditNoteUpdateInput] Credit note update payload
    # @param [Hash] opts the optional parameters
    # @return [CreditNote]
    def update_credit_note(lago_id, credit_note_update_input, opts = {})
      data, _status_code, _headers = update_credit_note_with_http_info(lago_id, credit_note_update_input, opts)
      data
    end

    # Update a credit note
    # This endpoint updates an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param credit_note_update_input [CreditNoteUpdateInput] Credit note update payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNote, Integer, Hash)>] CreditNote data, response status code and response headers
    def update_credit_note_with_http_info(lago_id, credit_note_update_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotesApi.update_credit_note ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling CreditNotesApi.update_credit_note"
      end
      # verify the required parameter 'credit_note_update_input' is set
      if @api_client.config.client_side_validation && credit_note_update_input.nil?
        fail ArgumentError, "Missing the required parameter 'credit_note_update_input' when calling CreditNotesApi.update_credit_note"
      end
      # resource path
      local_var_path = '/credit_notes/{lago_id}'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(credit_note_update_input)

      # return_type
      return_type = opts[:debug_return_type] || 'CreditNote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditNotesApi.update_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotesApi#update_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Void a credit note
    # This endpoint voids an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param [Hash] opts the optional parameters
    # @return [CreditNote]
    def void_credit_note(lago_id, opts = {})
      data, _status_code, _headers = void_credit_note_with_http_info(lago_id, opts)
      data
    end

    # Void a credit note
    # This endpoint voids an existing credit note.
    # @param lago_id [String] The credit note unique identifier, created by Lago.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNote, Integer, Hash)>] CreditNote data, response status code and response headers
    def void_credit_note_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditNotesApi.void_credit_note ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling CreditNotesApi.void_credit_note"
      end
      # resource path
      local_var_path = '/credit_notes/{lago_id}/void'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditNote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditNotesApi.void_credit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditNotesApi#void_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
