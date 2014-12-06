class CorrectionsController < InheritedResources::Base

  private

    def correction_params
      params.require(:correction).permit(:description, :ticket_id)
    end
end

