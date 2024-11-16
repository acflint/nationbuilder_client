=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::ImportsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ImportsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::ImportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImportsApi' do
    it 'should create an instance of ImportsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::ImportsApi)
    end
  end

  # unit tests for list_imports
  # List all imports in a nation
  # List all imports
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator 
  # @option opts [String] :fields_imports Comma-delimited list of attributes to only return in the response
  # @return [ImportIndexResponse]
  describe 'list_imports test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_import
  # Show import with provided ID
  # Show import with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator, signups 
  # @option opts [String] :fields_imports Comma-delimited list of attributes to only return in the response
  # @return [ImportShowResponse]
  describe 'show_import test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end