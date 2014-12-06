class Buy < ActiveRecord::Base
  belongs_to :curent_admin_user
  belongs_to :provider
end
