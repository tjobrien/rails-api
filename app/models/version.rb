class Version < ApplicationRecord
    belongs_to :previous_version, class_name: "Version", optional: true
    belongs_to :versionable, :polymorphic => true

    default_scope {order('created_at')}


end


