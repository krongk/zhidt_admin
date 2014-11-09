class SitePackageFlowComment < ActiveRecord::Base
  belongs_to :site_package_flow
  default_scope { order("updated_at DESC") }
end
