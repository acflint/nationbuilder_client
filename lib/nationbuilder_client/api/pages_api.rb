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
  class PagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a page
    # Creates a page from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @option opts [PageCreateRequest] :page_create_request
    # @return [PageShowResponse]
    def create_page(opts = {})
      data, _status_code, _headers = create_page_with_http_info(opts)
      data
    end

    # Create a page
    # Creates a page from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @option opts [PageCreateRequest] :page_create_request
    # @return [Array<(PageShowResponse, Integer, Hash)>] PageShowResponse data, response status code and response headers
    def create_page_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PagesApi.create_page ..."
      end
      # resource path
      local_var_path = "/api/v2/pages"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[pages]"] = opts[:fields_pages] if !opts[:fields_pages].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:page_create_request])

      # return_type
      return_type = opts[:debug_return_type] || "PageShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"PagesApi.create_page",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagesApi#create_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete page with provided ID
    # Delete page with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @return [EmptyMetaResponse]
    def delete_page(id, opts = {})
      data, _status_code, _headers = delete_page_with_http_info(id, opts)
      data
    end

    # Delete page with provided ID
    # Delete page with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @return [Array<(EmptyMetaResponse, Integer, Hash)>] EmptyMetaResponse data, response status code and response headers
    def delete_page_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PagesApi.delete_page ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PagesApi.delete_page"
      end
      # resource path
      local_var_path = "/api/v2/pages/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[pages]"] = opts[:fields_pages] if !opts[:fields_pages].nil?

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
        operation: :"PagesApi.delete_page",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagesApi#delete_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # List all pages in a nation
    # Lists all pages
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [PageIndexResponse]
    def list_pages(opts = {})
      data, _status_code, _headers = list_pages_with_http_info(opts)
      data
    end

    # List all pages in a nation
    # Lists all pages
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(PageIndexResponse, Integer, Hash)>] PageIndexResponse data, response status code and response headers
    def list_pages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PagesApi.list_pages ..."
      end
      # resource path
      local_var_path = "/api/v2/pages"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[pages]"] = opts[:fields_pages] if !opts[:fields_pages].nil?
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
      return_type = opts[:debug_return_type] || "PageIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"PagesApi.list_pages",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagesApi#list_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Show page with provided ID
    # Show page with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @return [PageShowResponse]
    def show_page(id, opts = {})
      data, _status_code, _headers = show_page_with_http_info(id, opts)
      data
    end

    # Show page with provided ID
    # Show page with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @return [Array<(PageShowResponse, Integer, Hash)>] PageShowResponse data, response status code and response headers
    def show_page_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PagesApi.show_page ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PagesApi.show_page"
      end
      # resource path
      local_var_path = "/api/v2/pages/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[pages]"] = opts[:fields_pages] if !opts[:fields_pages].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "PageShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"PagesApi.show_page",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagesApi#show_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update an existing page
    # Updates an existing page
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @option opts [PageUpdateRequest] :page_update_request
    # @return [PageShowResponse]
    def update_page(id, opts = {})
      data, _status_code, _headers = update_page_with_http_info(id, opts)
      data
    end

    # Update an existing page
    # Updates an existing page
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: site, membership_types
    # @option opts [String] :fields_pages Comma-delimited list of attributes to only return in the response
    # @option opts [PageUpdateRequest] :page_update_request
    # @return [Array<(PageShowResponse, Integer, Hash)>] PageShowResponse data, response status code and response headers
    def update_page_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PagesApi.update_page ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PagesApi.update_page"
      end
      # resource path
      local_var_path = "/api/v2/pages/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[pages]"] = opts[:fields_pages] if !opts[:fields_pages].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:page_update_request])

      # return_type
      return_type = opts[:debug_return_type] || "PageShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"PagesApi.update_page",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PagesApi#update_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
