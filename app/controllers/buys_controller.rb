class BuysController < InheritedResources::Base

  private

    def buy_params
      params.require(:buy).permit(:total, :fecha, :admin_user_id, :provider_id)
    end
end

