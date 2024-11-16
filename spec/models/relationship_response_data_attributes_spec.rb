=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for NationbuilderClient::RelationshipResponseDataAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NationbuilderClient::RelationshipResponseDataAttributes do
  let(:instance) { NationbuilderClient::RelationshipResponseDataAttributes.new }

  describe 'test an instance of RelationshipResponseDataAttributes' do
    it 'should create an instance of RelationshipResponseDataAttributes' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NationbuilderClient::RelationshipResponseDataAttributes)
    end
  end

  describe 'test attribute "first_signup_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "second_signup_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "relationship_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["affiliate-affiliate", "alum-school", "assistant-assisted", "board_member-organization", "candidate-committee", "chapter-parent", "child-parent", "consultant-organization", "employee-employer", "family_partner-family_partner", "friend-friend", "member-organization", "mentee-mentor", "partner-partner", "primary_contact-organization", "relative-relative", "representative-constituent", "resident-organization", "sibling-sibling", "spouse-spouse", "student-school", "student-teacher", "subordinate-manager", "subsidiary-parent", "treasurer-committee"])
      # validator.allowable_values.each do |value|
      #   expect { instance.relationship_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "title"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "updated_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end