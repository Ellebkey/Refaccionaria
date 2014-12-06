class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :clave, :description, :stock, :avaible, :pricepublic, :pricedesc, :pricemaxd, :categproduc_id)
    end
end

