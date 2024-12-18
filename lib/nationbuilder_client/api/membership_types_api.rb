# #NationBuilder V2 API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 2.0
#
# Generated by: https://openapi-generator.tech
# Generator version: 7.9.0
#

require "cgi"

module NationbuilderClient
  class MembershipTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a membership type
    # Creates a membership type from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @option opts [MembershipTypeCreateRequest] :membership_type_create_request
    # @return [MembershipTypeShowResponse]
    def create_membership_type(opts = {})
      data, _status_code, _headers = create_membership_type_with_http_info(opts)
      data
    end

    # Create a membership type
    # Creates a membership type from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @option opts [MembershipTypeCreateRequest] :membership_type_create_request
    # @return [Array<(MembershipTypeShowResponse, Integer, Hash)>] MembershipTypeShowResponse data, response status code and response headers
    def create_membership_type_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembershipTypesApi.create_membership_type ..."
      end
      # resource path
      local_var_path = "/api/v2/membership_types"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[membership_types]"] = opts[:fields_membership_types] if !opts[:fields_membership_types].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(["application/json"])
      if !content_type.nil?
          header_params["Content-Type"] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:membership_type_create_request])

      # return_type
      return_type = opts[:debug_return_type] || "MembershipTypeShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"MembershipTypesApi.create_membership_type",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembershipTypesApi#create_membership_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete membership type with provided ID
    # Delete membership type with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @return [EmptyMetaResponse]
    def delete_membership_type(id, opts = {})
      data, _status_code, _headers = delete_membership_type_with_http_info(id, opts)
      data
    end

    # Delete membership type with provided ID
    # Delete membership type with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @return [Array<(EmptyMetaResponse, Integer, Hash)>] EmptyMetaResponse data, response status code and response headers
    def delete_membership_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembershipTypesApi.delete_membership_type ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembershipTypesApi.delete_membership_type"
      end
      # resource path
      local_var_path = "/api/v2/membership_types/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[membership_types]"] = opts[:fields_membership_types] if !opts[:fields_membership_types].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "EmptyMetaResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"MembershipTypesApi.delete_membership_type",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembershipTypesApi#delete_membership_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # List all membership types in a nation
    # Lists all membership types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [MembershipTypeIndexResponse]
    def list_membership_types(opts = {})
      data, _status_code, _headers = list_membership_types_with_http_info(opts)
      data
    end

    # List all membership types in a nation
    # Lists all membership types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(MembershipTypeIndexResponse, Integer, Hash)>] MembershipTypeIndexResponse data, response status code and response headers
    def list_membership_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembershipTypesApi.list_membership_types ..."
      end
      # resource path
      local_var_path = "/api/v2/membership_types"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[membership_types]"] = opts[:fields_membership_types] if !opts[:fields_membership_types].nil?
      query_params[:"page[number]"] = opts[:page_number] if !opts[:page_number].nil?
      query_params[:"page[size]"] = opts[:page_size] if !opts[:page_size].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "MembershipTypeIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"MembershipTypesApi.list_membership_types",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembershipTypesApi#list_membership_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Show membership type with provided ID
    # Show membership type with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @return [MembershipTypeShowResponse]
    def show_membership_type(id, opts = {})
      data, _status_code, _headers = show_membership_type_with_http_info(id, opts)
      data
    end

    # Show membership type with provided ID
    # Show membership type with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @return [Array<(MembershipTypeShowResponse, Integer, Hash)>] MembershipTypeShowResponse data, response status code and response headers
    def show_membership_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembershipTypesApi.show_membership_type ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembershipTypesApi.show_membership_type"
      end
      # resource path
      local_var_path = "/api/v2/membership_types/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[membership_types]"] = opts[:fields_membership_types] if !opts[:fields_membership_types].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "MembershipTypeShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"MembershipTypesApi.show_membership_type",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembershipTypesApi#show_membership_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update an existing membership type
    # Updates an existing membership type
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @option opts [MembershipTypeUpdateRequest] :membership_type_update_request
    # @return [MembershipTypeShowResponse]
    def update_membership_type(id, opts = {})
      data, _status_code, _headers = update_membership_type_with_http_info(id, opts)
      data
    end

    # Update an existing membership type
    # Updates an existing membership type
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: page, memberships
    # @option opts [String] :fields_membership_types Comma-delimited list of attributes to only return in the response
    # @option opts [MembershipTypeUpdateRequest] :membership_type_update_request
    # @return [Array<(MembershipTypeShowResponse, Integer, Hash)>] MembershipTypeShowResponse data, response status code and response headers
    def update_membership_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembershipTypesApi.update_membership_type ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembershipTypesApi.update_membership_type"
      end
      # resource path
      local_var_path = "/api/v2/membership_types/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[membership_types]"] = opts[:fields_membership_types] if !opts[:fields_membership_types].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(["application/json"])
      if !content_type.nil?
          header_params["Content-Type"] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:membership_type_update_request])

      # return_type
      return_type = opts[:debug_return_type] || "MembershipTypeShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"MembershipTypesApi.update_membership_type",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembershipTypesApi#update_membership_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
