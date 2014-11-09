class SitePackageFlow < ActiveRecord::Base
  belongs_to :site_package
  belongs_to :flow
  default_scope { order("updated_at DESC") }
end
