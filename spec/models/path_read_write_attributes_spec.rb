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

# Unit tests for NationbuilderClient::PathReadWriteAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NationbuilderClient::PathReadWriteAttributes do
  let(:instance) { NationbuilderClient::PathReadWriteAttributes.new }

  describe 'test an instance of PathReadWriteAttributes' do
    it 'should create an instance of PathReadWriteAttributes' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NationbuilderClient::PathReadWriteAttributes)
    end
  end

  describe 'test attribute "default_due_date_interval"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["none", "same_day", "one_day", "two_day", "three_day", "four_day", "five_day", "six_day", "one_week", "two_week", "thirty_day", "two_month", "three_month", "six_month", "one_year"])
      # validator.allowable_values.each do |value|
      #   expect { instance.default_due_date_interval = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "default_point_person_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "default_value_amount"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "due_date_is_enabled"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "value_amount_is_enabled"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
