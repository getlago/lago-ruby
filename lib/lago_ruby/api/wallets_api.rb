=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.48.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module LagoAPI
  class WalletsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a wallet
    # This endpoint is used to create a wallet with prepaid credits.
    # @param wallet_create_input [WalletCreateInput] Wallet payload
    # @param [Hash] opts the optional parameters
    # @return [Wallet]
    def create_wallet(wallet_create_input, opts = {})
      data, _status_code, _headers = create_wallet_with_http_info(wallet_create_input, opts)
      data
    end

    # Create a wallet
    # This endpoint is used to create a wallet with prepaid credits.
    # @param wallet_create_input [WalletCreateInput] Wallet payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(Wallet, Integer, Hash)>] Wallet data, response status code and response headers
    def create_wallet_with_http_info(wallet_create_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletsApi.create_wallet ...'
      end
      # verify the required parameter 'wallet_create_input' is set
      if @api_client.config.client_side_validation && wallet_create_input.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_create_input' when calling WalletsApi.create_wallet"
      end
      # resource path
      local_var_path = '/wallets'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(wallet_create_input)

      # return_type
      return_type = opts[:debug_return_type] || 'Wallet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletsApi.create_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletsApi#create_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Top up a wallet
    # This endpoint is used to top-up an active wallet.
    # @param wallet_transaction_create_input [WalletTransactionCreateInput] Wallet transaction payload
    # @param [Hash] opts the optional parameters
    # @return [WalletTransactions]
    def create_wallet_transaction(wallet_transaction_create_input, opts = {})
      data, _status_code, _headers = create_wallet_transaction_with_http_info(wallet_transaction_create_input, opts)
      data
    end

    # Top up a wallet
    # This endpoint is used to top-up an active wallet.
    # @param wallet_transaction_create_input [WalletTransactionCreateInput] Wallet transaction payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(WalletTransactions, Integer, Hash)>] WalletTransactions data, response status code and response headers
    def create_wallet_transaction_with_http_info(wallet_transaction_create_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletsApi.create_wallet_transaction ...'
      end
      # verify the required parameter 'wallet_transaction_create_input' is set
      if @api_client.config.client_side_validation && wallet_transaction_create_input.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_transaction_create_input' when calling WalletsApi.create_wallet_transaction"
      end
      # resource path
      local_var_path = '/wallet_transactions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(wallet_transaction_create_input)

      # return_type
      return_type = opts[:debug_return_type] || 'WalletTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletsApi.create_wallet_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletsApi#create_wallet_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate a wallet
    # This endpoint is used to terminate an existing wallet with prepaid credits.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Wallet]
    def destroy_wallet(lago_id, opts = {})
      data, _status_code, _headers = destroy_wallet_with_http_info(lago_id, opts)
      data
    end

    # Terminate a wallet
    # This endpoint is used to terminate an existing wallet with prepaid credits.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Wallet, Integer, Hash)>] Wallet data, response status code and response headers
    def destroy_wallet_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletsApi.destroy_wallet ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling WalletsApi.destroy_wallet"
      end
      # resource path
      local_var_path = '/wallets/{lago_id}'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Wallet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletsApi.destroy_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletsApi#destroy_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all wallet transactions
    # This endpoint is used to list all wallet transactions.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @option opts [String] :status The status of the wallet transaction. Possible values are &#x60;pending&#x60; or &#x60;settled&#x60;.
    # @option opts [String] :transaction_type The transaction type of the wallet transaction. Possible values are &#x60;inbound&#x60; (increasing the wallet balance) or &#x60;outbound&#x60; (decreasing the wallet balance).
    # @return [WalletTransactionsPaginated]
    def find_all_wallet_transactions(lago_id, opts = {})
      data, _status_code, _headers = find_all_wallet_transactions_with_http_info(lago_id, opts)
      data
    end

    # List all wallet transactions
    # This endpoint is used to list all wallet transactions.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @option opts [String] :status The status of the wallet transaction. Possible values are &#x60;pending&#x60; or &#x60;settled&#x60;.
    # @option opts [String] :transaction_type The transaction type of the wallet transaction. Possible values are &#x60;inbound&#x60; (increasing the wallet balance) or &#x60;outbound&#x60; (decreasing the wallet balance).
    # @return [Array<(WalletTransactionsPaginated, Integer, Hash)>] WalletTransactionsPaginated data, response status code and response headers
    def find_all_wallet_transactions_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletsApi.find_all_wallet_transactions ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling WalletsApi.find_all_wallet_transactions"
      end
      # resource path
      local_var_path = '/wallets/{lago_id}/wallet_transactions'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'transaction_type'] = opts[:'transaction_type'] if !opts[:'transaction_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WalletTransactionsPaginated'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletsApi.find_all_wallet_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletsApi#find_all_wallet_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all wallets
    # This endpoint is used to list all wallets with prepaid credits.
    # @param external_customer_id [String] The customer external unique identifier (provided by your own application).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @return [WalletsPaginated]
    def find_all_wallets(external_customer_id, opts = {})
      data, _status_code, _headers = find_all_wallets_with_http_info(external_customer_id, opts)
      data
    end

    # List all wallets
    # This endpoint is used to list all wallets with prepaid credits.
    # @param external_customer_id [String] The customer external unique identifier (provided by your own application).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number.
    # @option opts [Integer] :per_page Number of records per page.
    # @return [Array<(WalletsPaginated, Integer, Hash)>] WalletsPaginated data, response status code and response headers
    def find_all_wallets_with_http_info(external_customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletsApi.find_all_wallets ...'
      end
      # verify the required parameter 'external_customer_id' is set
      if @api_client.config.client_side_validation && external_customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_customer_id' when calling WalletsApi.find_all_wallets"
      end
      # resource path
      local_var_path = '/wallets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'external_customer_id'] = external_customer_id
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
      return_type = opts[:debug_return_type] || 'WalletsPaginated'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletsApi.find_all_wallets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletsApi#find_all_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a wallet
    # This endpoint is used to retrieve an existing wallet with prepaid credits.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Wallet]
    def find_wallet(lago_id, opts = {})
      data, _status_code, _headers = find_wallet_with_http_info(lago_id, opts)
      data
    end

    # Retrieve a wallet
    # This endpoint is used to retrieve an existing wallet with prepaid credits.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Wallet, Integer, Hash)>] Wallet data, response status code and response headers
    def find_wallet_with_http_info(lago_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletsApi.find_wallet ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling WalletsApi.find_wallet"
      end
      # resource path
      local_var_path = '/wallets/{lago_id}'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Wallet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletsApi.find_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletsApi#find_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a wallet
    # This endpoint is used to update an existing wallet with prepaid credits.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param wallet_update_input [WalletUpdateInput] Wallet update payload
    # @param [Hash] opts the optional parameters
    # @return [Wallet]
    def update_wallet(lago_id, wallet_update_input, opts = {})
      data, _status_code, _headers = update_wallet_with_http_info(lago_id, wallet_update_input, opts)
      data
    end

    # Update a wallet
    # This endpoint is used to update an existing wallet with prepaid credits.
    # @param lago_id [String] Unique identifier assigned to the wallet within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the wallet’s record within the Lago system.
    # @param wallet_update_input [WalletUpdateInput] Wallet update payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(Wallet, Integer, Hash)>] Wallet data, response status code and response headers
    def update_wallet_with_http_info(lago_id, wallet_update_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WalletsApi.update_wallet ...'
      end
      # verify the required parameter 'lago_id' is set
      if @api_client.config.client_side_validation && lago_id.nil?
        fail ArgumentError, "Missing the required parameter 'lago_id' when calling WalletsApi.update_wallet"
      end
      # verify the required parameter 'wallet_update_input' is set
      if @api_client.config.client_side_validation && wallet_update_input.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_update_input' when calling WalletsApi.update_wallet"
      end
      # resource path
      local_var_path = '/wallets/{lago_id}'.sub('{' + 'lago_id' + '}', CGI.escape(lago_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(wallet_update_input)

      # return_type
      return_type = opts[:debug_return_type] || 'Wallet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WalletsApi.update_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletsApi#update_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
