=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::BroadcastersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BroadcastersApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::BroadcastersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BroadcastersApi' do
    it 'should create an instance of BroadcastersApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::BroadcastersApi)
    end
  end

  # unit tests for list_broadcasters
  # List all broadcasters in a nation
  # Lists all broadcasters
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person 
  # @option opts [String] :fields_broadcasters Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [BroadcasterIndexResponse]
  describe 'list_broadcasters test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_broadcaster
  # Show broadcaster with provided ID
  # Show broadcaster with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person, mailings, signups 
  # @option opts [String] :fields_broadcasters Comma-delimited list of attributes to only return in the response
  # @return [BroadcasterShowResponse]
  describe 'show_broadcaster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
