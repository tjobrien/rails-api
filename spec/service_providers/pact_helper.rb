require 'pact/consumer/rspec'

Pact.service_consumer "Rails App" do
  has_pact_with "Employee Service" do
    mock_service :employee_service do
      port 1234
    end
  end
end