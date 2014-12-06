ActiveAdmin.register Product ,:as => "Producto" do

  menu :priority => 1

  index do
    column "Nombre",:name 
    column :clave
    column :stock
    column "En existencia",:avaible
    column "Tipo",:categprod
    column "Precio,",:pricepublic 
    actions
  end

  scope :all, :default => true

  filter :name , :as => :string, :label=>"Nombre"
  filter :categprod, :as => :select, :label => "Categoria"
  filter :avaible, :as => :select, :label => "En existencia"
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
  permit_params :name, :clave, :description, :stock, :avaible, :pricepublic, :pricedesc, :pricemaxd, :categprod_id

end
