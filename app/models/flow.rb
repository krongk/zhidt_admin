class Flow < ActiveRecord::Base
  belongs_to :package
  default_scope { order("updated_at DESC") }
end
