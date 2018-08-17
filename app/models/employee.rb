class Employee < ApplicationRecord
    has_many :pictures, as: :imageable

    after_save :create_version

    private
    def create_version
        byebug
        
    end
end
