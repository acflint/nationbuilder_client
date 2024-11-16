=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::CustomFieldsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomFieldsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::CustomFieldsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomFieldsApi' do
    it 'should create an instance of CustomFieldsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::CustomFieldsApi)
    end
  end

  # unit tests for list_custom_fields
  # List all custom fields in a nation
  # Lists all custom fields
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  # @option opts [String] :fields_custom_fields Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [CustomFieldIndexResponse]
  describe 'list_custom_fields test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_custom_field
  # Show custom field with provided ID
  # Show custom field with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none) 
  # @option opts [String] :fields_custom_fields Comma-delimited list of attributes to only return in the response
  # @return [CustomFieldShowResponse]
  describe 'show_custom_field test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end