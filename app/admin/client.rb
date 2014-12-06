ActiveAdmin.register Client, :as => "Clientes" do
  menu :priority => 2

  index do
    column "Nombre",:name
    column "Direccion", :address
    column :email
    column "Descuento", :discount 
    actions
  end

  filter :name , :as => :string, :label=>"Nombre"
  filter :discount, :as => :select, :label => "Descuento"
  filter :created_at, :label => "Fecha"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end 
  permit_params :name, :address, :rfc, :email, :discount

end
