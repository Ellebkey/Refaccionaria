class Product < ActiveRecord::Base
  belongs_to :categprod
  scope :unreleased, where(:released_at => nil)

  
end
