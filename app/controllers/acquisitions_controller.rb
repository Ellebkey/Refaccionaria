class AcquisitionsController < InheritedResources::Base

  private

    def acquisition_params
      params.require(:acquisition).permit(:cant, :product_id, :buy_id)
    end
end

