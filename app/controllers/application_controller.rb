class ApplicationController < ActionController::Base

    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to costumers_path, notice: "No estas autorizado"
        end
    end
end
