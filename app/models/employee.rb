class Employee < ApplicationRecord
    #has_many :pictures, as: :imageable
    has_one :picture, as: :imageable
    #after_save :create_version
    validates_presence_of :name
    has_many :hours

    private
    def create_version
        byebug
        
    end
end
