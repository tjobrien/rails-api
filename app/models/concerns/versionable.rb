module Versionable
    extend ActiveSupport::Concern
    
    included do
      has_many :versions, as: :versionable
      validates :title, :version, :presence => true
      before_update :increment_previous_version
    end
  
    def add_version
        Version.create(versionable: self, resource_new: self.serializable_hash, new_version_id: self.version, previous_version_id: nil)
    end

    def update_version
        last_version = versions.last
        Version.create(versionable: self, resource_new: self.serializable_hash, new_version_id: self.version, 
        previous_version_id: last_version.id, resource_old: last_version.resource_new)
    end

    def increment_previous_version
        self.version = self.version + 1    
    end

    #  Place common model methods here.
    # module ClassMethods
    #   def some_method
    #   end
    # end
end