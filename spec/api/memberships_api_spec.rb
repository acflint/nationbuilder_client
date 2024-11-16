=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::MembershipsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MembershipsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::MembershipsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MembershipsApi' do
    it 'should create an instance of MembershipsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::MembershipsApi)
    end
  end

  # unit tests for create_membership
  # Create a membership
  # Creates a membership from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: membership_type, signup 
  # @option opts [String] :fields_memberships Comma-delimited list of attributes to only return in the response
  # @option opts [MembershipCreateRequest] :membership_create_request 
  # @return [MembershipShowResponse]
  describe 'create_membership test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_membership
  # Delete membership with provided ID
  # Delete membership with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup 
  # @option opts [String] :fields_memberships Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_membership test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_memberships
  # List all memberships in a nation
  # Lists all memberships
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: membership_type, signup 
  # @option opts [String] :fields_memberships Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [MembershipIndexResponse]
  describe 'list_memberships test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_membership
  # Show membership with provided ID
  # Show membership with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup 
  # @option opts [String] :fields_memberships Comma-delimited list of attributes to only return in the response
  # @return [MembershipShowResponse]
  describe 'show_membership test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_membership
  # Update an existing membership
  # Updates an existing membership
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: donations, membership_type, signup 
  # @option opts [String] :fields_memberships Comma-delimited list of attributes to only return in the response
  # @option opts [MembershipUpdateRequest] :membership_update_request 
  # @return [MembershipShowResponse]
  describe 'update_membership test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end