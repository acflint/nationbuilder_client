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
  class SitesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all sites in a nation
    # Lists all sites
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)
    # @option opts [String] :fields_sites Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [SiteIndexResponse]
    def list_sites(opts = {})
      data, _status_code, _headers = list_sites_with_http_info(opts)
      data
    end

    # List all sites in a nation
    # Lists all sites
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)
    # @option opts [String] :fields_sites Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(SiteIndexResponse, Integer, Hash)>] SiteIndexResponse data, response status code and response headers
    def list_sites_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SitesApi.list_sites ..."
      end
      # resource path
      local_var_path = "/api/v2/sites"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[sites]"] = opts[:fields_sites] if !opts[:fields_sites].nil?
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
      return_type = opts[:debug_return_type] || "SiteIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SitesApi.list_sites",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SitesApi#list_sites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
