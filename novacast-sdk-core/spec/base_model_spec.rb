require 'spec_helper'

module NovacastSDK
  module Rspec
    class Client < NovacastSDK::BaseModel
      attr_accessor :name, :client_id, :company, :employees, :leads

      def self.api_model_module
        NovacastSDK::Rspec
      end

      def self.model_properties
        {
          :'name'      => { base_name: 'name',      type: 'String' },
          :'client_id' => { base_name: 'client_id', type: 'Integer' },
          :'company'   => { base_name: 'company',   type: 'Company' },
          :'employees' => { base_name: 'employees', type: 'Array[String]' },
          :'leads'     => { base_name: 'leads',     type: 'Array[Company]' }
        }
      end
    end

    class Company < NovacastSDK::BaseModel
      attr_accessor :name

      def self.api_model_module
        NovacastSDK::Rspec
      end

      def self.model_properties
        { :'name' => { base_name: 'name', type: 'String',  required: true } }
      end
    end

    class ComplexModel < NovacastSDK::BaseModel
      attr_accessor :simple_hash, :object_hash

      def self.api_model_module
        NovacastSDK::Rspec
      end

      def self.model_properties
        {
          :'simple_hash' => { base_name: 'simple_hash', type: 'Hash[String, String]' },
          :'object_hash' => { base_name: 'object_hash', type: 'Hash[String, Company]' }
        }
      end
    end

    class TestSerializer < NovacastSDK::ModelSerializer
      def value
        nil
      end
    end
  end
end

RSpec.describe 'BaseModel', '::new' do
  it 'sets single attribute' do
    comp = NovacastSDK::Rspec::Company.new 'name' => 'Test Company'
    expect(comp.name).to eq('Test Company')
  end

  it 'sets single attribute (with symbol key)' do
    comp = NovacastSDK::Rspec::Company.new name: 'Test Company'
    expect(comp.name).to eq('Test Company')
  end

  it 'sets multiple attributes' do
    client = NovacastSDK::Rspec::Client.new name: 'Test Client', client_id: 1
    expect(client.name).to eq('Test Client')
    expect(client.client_id).to eq(1)
  end

  it 'sets non-primitive attribute' do
    client = NovacastSDK::Rspec::Client.new company: { name: 'Test Company' }
    expect(client.company).to be_a(NovacastSDK::Rspec::Company)
    expect(client.company).not_to be_nil
    expect(client.company.name).to eq('Test Company')
  end

  it 'sets array attribute' do
    client = NovacastSDK::Rspec::Client.new employees: ['Employee 1', 'Employee 2']
    expect(client.employees).to match_array(['Employee 1', 'Employee 2'])
  end

  it 'sets non-primitive attribute' do
    client = NovacastSDK::Rspec::Client.new leads: [ { name: 'Lead 1' }, { name: 'Lead 2' }]
    lead_names = client.leads.map do |l|
      expect(l).to be_a(NovacastSDK::Rspec::Company)
      l.name
    end
    expect(lead_names).to match_array(['Lead 1', 'Lead 2'])
  end

  context 'with custom serializer' do
    before :example do
      allow(NovacastSDK::Rspec::TestSerializer).to receive(:new).and_call_original
      NovacastSDK::Rspec::Company.new({ 'name' => 'Test Company' }, :serializer => NovacastSDK::Rspec::TestSerializer)
    end

    it 'uses the custom serializer' do
      expect(NovacastSDK::Rspec::TestSerializer).to have_received(:new)
    end
  end

  context 'with serializer options' do
    before :example do
      allow(NovacastSDK::Rspec::TestSerializer).to receive(:new).and_call_original
      NovacastSDK::Rspec::Company.new({ 'name' => 'Test Company' }, :serializer => NovacastSDK::Rspec::TestSerializer, :test_option => 'test_value')
    end

    it 'uses the custom serializer' do
      expect(NovacastSDK::Rspec::TestSerializer).to have_received(:new)
    end

    it 'passes the options to the serializer' do
      expect(NovacastSDK::Rspec::TestSerializer).to have_received(:new).with(anything, { :test_option => 'test_value' })
    end
  end
end

RSpec.describe 'BaseModel', '#to_h' do
  it 'returns the model as a hash' do
    comp = NovacastSDK::Rspec::Company.new 'name' => 'Test Company'
    expect(comp.to_h).to match(name: 'Test Company')
  end

  it 'returns the model as a hash with available attributes only' do
    client = NovacastSDK::Rspec::Client.new name: 'Test Client', client_id: 1
    expect(client.to_h).to match(client_id: 1, name: 'Test Client')
  end

  it 'returns the model as a hash with non-primitive attribute' do
    client = NovacastSDK::Rspec::Client.new company: { name: 'Test Company' }
    expect(client.to_h).to match(company: { name: 'Test Company'})
  end

  it 'returns the model as a hash with array attribute' do
    client = NovacastSDK::Rspec::Client.new employees: ['Employees 1', 'Employees 2']
    expect(client.to_h).to match(employees: ['Employees 1', 'Employees 2'])
  end

  it 'returns the model as a hash with non-primitive array attribute' do
    client = NovacastSDK::Rspec::Client.new leads: [ { name: 'Lead 1' }, { name: 'Lead 2' }]
    expect(client.to_h).to match(leads: [ { name: 'Lead 1' }, { name: 'Lead 2' }])
  end
end

RSpec.describe 'BaseModel', '#valid?' do
  context 'with required property' do
    it 'returns true if the required property is present' do
      comp = NovacastSDK::Rspec::Company.new name: 'Client name'
      expect(comp.valid?).to eq(true)
    end

    it 'returns false if the required property is missing' do
      comp = NovacastSDK::Rspec::Company.new({})
      expect(comp.valid?).to eq(false)
    end
  end

  context 'with optional property' do
    it 'returns true if the optional property is present' do
      comp = NovacastSDK::Rspec::Client.new name: 'Client name'
      expect(comp.valid?).to eq(true)
    end

    it 'returns true if the optional property is missing' do
      comp = NovacastSDK::Rspec::Client.new({})
      expect(comp.valid?).to eq(true)
    end
  end

  context 'with Array property' do
    it 'returns true with valid primitive array values' do
      client = NovacastSDK::Rspec::Client.new employees: ['Employee 1']
      expect(client.valid?).to eq(true)
    end

    it 'returns true with empty array' do
      client = NovacastSDK::Rspec::Client.new employees: []
      expect(client.valid?).to eq(true)
    end

    it 'returns true with valid object array values' do
      client = NovacastSDK::Rspec::Client.new leads: [ { name: 'Lead 1' } ]
      expect(client.valid?).to eq(true)
    end

    it 'returns true with invalid object array values' do
      client = NovacastSDK::Rspec::Client.new leads: [ { name: nil } ]
      expect(client.valid?).to eq(false)
    end
  end

  context 'with Hash property' do
    it 'returns true if valid primitive hash value' do
      complex = NovacastSDK::Rspec::ComplexModel.new simple_hash: { 'key_1' => 'value 1' }
      expect(complex.valid?).to eq(true)
    end

    it 'returns false if invalid primitive hash value' do
      complex = NovacastSDK::Rspec::ComplexModel.new simple_hash: { 'key_1' => nil }
      expect(complex.valid?).to eq(false)
    end

    it 'returns true if valid object hash value' do
      complex = NovacastSDK::Rspec::ComplexModel.new object_hash: { 'object_1' => { name: 'company 1' } }
      expect(complex.valid?).to eq(true)
    end

    it 'returns true if invalid object hash value' do
      complex = NovacastSDK::Rspec::ComplexModel.new object_hash: { 'object_1' => { name: nil } }
      expect(complex.valid?).to eq(false)
    end
  end
end