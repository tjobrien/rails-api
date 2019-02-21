# In /spec/service_providers/animal_service_client_spec.rb
# When using RSpec, use the metadata `:pact => true` to include all the pact functionality in your spec.
# When using Minitest, include Pact::Consumer::Minitest in your spec.

require_relative '../../lib/employee_service_client'
require_relative 'pact_helper'
describe EmployeeServiceClient, :pact => true do
  before do
    # Configure your client to point to the stub service on localhost using the port you have specified
    EmployeeServiceClient.base_uri 'localhost:1234'
  end
  subject { EmployeeServiceClient.new }
  describe "get_employee" do
    before do
      employee_service.given("an employee exists").
        upon_receiving("a request for an employee").
        with(method: :get, path: '/employee', query: '').
        will_respond_with(
          status: 200,
          headers: {'Content-Type' => 'application/json'},
          body: {name: 'Tom'} )
    end
    it "returns an employee" do
      expect(subject.get_employee).to eq(Employee.new(name: 'Tom'))
    end
  end
 end