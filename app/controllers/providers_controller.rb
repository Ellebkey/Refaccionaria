class ProvidersController < InheritedResources::Base

  private

    def provider_params
      params.require(:provider).permit(:name, :address, :city, :state, :rfc)
    end
end

