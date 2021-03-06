ActiveAdmin.register AdminUser , :as => "Usuarios" do

  menu :priority => 11

  permit_params :email, :password, :password_confirmation, :salary

  index do
    selectable_column
    id_column
    column :email
    column :role
    column :salary
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.inputs :salary
      #f.input :password
      #f.input :password_confirmation
    end
    f.actions
  end

end
