class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def after_sign_in_path_for(resource)
    #     if current_user.role == 'admin'
    #       admin_index_path
    #     else
          
    #     end
    #   end
      root_path
    end
end
