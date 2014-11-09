class Package < ActiveRecord::Base
  has_many :flows
  #default_scope -> { order('updated_at DESC') } 
end
