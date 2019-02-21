class EmployeeServiceClient
    include HTTParty
    base_uri 'http://employee-service.com'

  def get_employee
    name = JSON.parse(self.class.get("/employee").body)['name']
    Employee.new(name: name)
  end
end