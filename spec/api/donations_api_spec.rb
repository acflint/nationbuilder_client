=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::DonationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DonationsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::DonationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DonationsApi' do
    it 'should create an instance of DonationsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::DonationsApi)
    end
  end

  # unit tests for create_donation
  # Create a donation
  # Creates a donation from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  # @option opts [String] :fields_donations Comma-delimited list of attributes to only return in the response
  # @option opts [DonationCreateRequest] :donation_create_request 
  # @return [DonationShowResponse]
  describe 'create_donation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_donation
  # Delete donation with provided ID
  # Delete donation with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  # @option opts [String] :fields_donations Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_donation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_donations
  # List all donations in a nation
  # Lists all donations
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  # @option opts [String] :fields_donations Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [DonationIndexResponse]
  describe 'list_donations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_donation
  # Show donation with provided ID
  # Show donation with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  # @option opts [String] :fields_donations Comma-delimited list of attributes to only return in the response
  # @return [DonationShowResponse]
  describe 'show_donation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_donation
  # Update an existing donation
  # Updates an existing donation
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, import, membership, page, payment_type, pledge, mailing, recruiter, signup 
  # @option opts [String] :fields_donations Comma-delimited list of attributes to only return in the response
  # @option opts [DonationUpdateRequest] :donation_update_request 
  # @return [DonationShowResponse]
  describe 'update_donation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
