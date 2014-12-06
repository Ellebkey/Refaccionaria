class SellreportsController < InheritedResources::Base

  private

    def sellreport_params
      params.require(:sellreport).permit(:total, :fecha, :sell_id)
    end
end

