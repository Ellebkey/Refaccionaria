class SellsController < InheritedResources::Base

  private

    def sell_params
      params.require(:sell).permit(:cant, :totalp, :state, :product_id, :facture_id)
    end
end

