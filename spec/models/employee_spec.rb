require 'rails_helper'

# RSpec.describe Employee, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
# https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec
RSpec.describe Employee, :type => :model do
  it "is valid with valid attributes" do
    #expect(Employee.new).to be_valid
    expect(Employee.new(name: "Anything")).to be_valid
  end
  
    it "is not valid without a name" do
      employee = Employee.new(name: nil)
      expect(employee).to_not be_valid
    end

    it "is not valid without a picture"
  
end