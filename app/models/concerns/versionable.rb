module Versionable
    extend ActiveSupport::Concern
    
    included do
      has_many :versions, as: :versionable
    end
  
    def add_version
        Version.create(versionable: self, resource_new: self.serializable_hash, new_version_id: self.id, previous_version_id: nil)
    end

    def update_version
        last_version = versions.last
        Version.create(versionable: self, resource_new: self.serializable_hash, new_version_id: self.id, 
        previous_version_id: last_version.id, resource_old: last_version.resource_new)
    end


    #  Place common model methods here.
    # module ClassMethods
    #   def some_method
    #   end
    # end
end