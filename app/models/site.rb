class Site < ActiveRecord::Base
  belongs_to :user
  has_many :site_packages
  default_scope { order("updated_at DESC") }
end
