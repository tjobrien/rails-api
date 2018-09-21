require 'rails_helper'

# RSpec.describe Employee, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
# https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec
RSpec.describe Employee, :type => :model do
  context "validations" do
    it "is valid with valid attributes" do
      #expect(Employee.new).to be_valid #1
      expect(Employee.new(name: 'Tomas')).to be_valid #2 change to get this script to pass after adding validation
    end

    it "it is not valid without a name" do
      #without any behavior in the model, this test fails because we expect the record to not be valid because we are setting the name to nil
      employee = Employee.new(name: nil)
      expect(employee).to_not be_valid
      #to make the above test pass, need to add a validation for name to Employee model, when that happens, first example now fails
    end
    #using shoulda - needed to add configuration to rais_helper.rb
    describe "Associations" do
        it { should have_many (:hours) }
  
    end
      
  end
  # context "it is not valid " do
  #   it "without a name" do
  #     # pending 'no need to test this yet'
  #     # employee = Employee.new(name: nil)
  #     # expect(employee).to_not be_valid
  #   end

  #   it "is not valid without a picture"
  # end
  
end