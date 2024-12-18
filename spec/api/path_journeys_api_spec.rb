=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::PathJourneysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PathJourneysApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::PathJourneysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PathJourneysApi' do
    it 'should create an instance of PathJourneysApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::PathJourneysApi)
    end
  end

  # unit tests for abandon_path_journey
  # Abandon path journey with provided ID
  # Abandon path journey with provided ID 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :path_journey_status_change_id ID for abandonment reason
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @return [PathJourneyShowResponse]
  describe 'abandon_path_journey test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for complete_path_journey
  # Complete path journey with provided ID
  # Complete path journey with provided ID 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :path_journey_status_change_id ID for completion reason
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @return [PathJourneyShowResponse]
  describe 'complete_path_journey test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_path_journey
  # Create a path journey
  # Creates a path journey from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @option opts [PathJourneyCreateRequest] :path_journey_create_request 
  # @return [PathJourneyShowResponse]
  describe 'create_path_journey test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_path_journeys
  # List all path journeys in a nation
  # Lists all path journeys
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [PathJourneyIndexResponse]
  describe 'list_path_journeys test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for reactivate_path_journey
  # Reactivate path journey with provided ID
  # Reactivate path journey with provided ID 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @return [PathJourneyShowResponse]
  describe 'reactivate_path_journey test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_path_journey
  # Show path journey with provided ID
  # Show path journey with provided ID 
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @return [PathJourneyShowResponse]
  describe 'show_path_journey test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_path_journey
  # Update an existing path journey
  # Updates an existing path journey
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @option opts [PathJourneyUpdateRequest] :path_journey_update_request 
  # @return [PathJourneyShowResponse]
  describe 'update_path_journey test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for void_path_journey
  # Void path journey with provided ID
  # Void path journey with provided ID 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup, path, point_person, current_step_point_person, path_journey_status_change, current_step, path_histories 
  # @option opts [String] :fields_path_journeys Comma-delimited list of attributes to only return in the response
  # @return [PathJourneyShowResponse]
  describe 'void_path_journey test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
