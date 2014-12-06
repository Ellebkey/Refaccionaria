class CategprodsController < InheritedResources::Base

  private

    def categprod_params
      params.require(:categprod).permit(:tipe)
    end
end

