class Ticket < ActiveRecord::Base
  belongs_to :admin_user
  belongs_to :product
  belongs_to :sell
end
