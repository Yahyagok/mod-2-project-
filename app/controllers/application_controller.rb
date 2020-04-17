class ApplicationController < ActionController::Base
    before_action :get_current_user
    before_action :authorized

    def get_current_user 
        @current_user = User.find_by(id: session[:user_id])
      end 

      def authorized
        if @current_user
          # execute normally
        else 
          flash[:error] = "You've got to ask yourself one question: 'Do I feel lucky?' Well, do ya punk? - Dirty Harry, 1971" 
          
          
          redirect_to login_path
        end 
      end 

end
