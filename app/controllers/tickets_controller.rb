class TicketsController < InheritedResources::Base

  private

    def ticket_params
      params.require(:ticket).permit(:totalp, :admin_user_id, :product_id, :sell_id)
    end
end

