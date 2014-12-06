class FacturesController < InheritedResources::Base

  private

    def facture_params
      params.require(:facture).permit(:fecha, :totalfac, :client_id)
    end
end

