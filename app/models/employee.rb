class Employee < ApplicationRecord
    #has_many :pictures, as: :imageable
    has_one :picture, as: :imageable
    #after_save :create_version
    validates_presence_of :name
    has_many :hours
    def log_data
        logger.tagged("TEST") {logger.info("#{Time.now.gmtime} starting logging data")}
        logger.debug("this is debug level log");
        logger.warn("this is warn level log");
    end
    private
    def create_version
        byebug
        
    end
    
end
