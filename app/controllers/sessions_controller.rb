class SessionsController < ApplicationController
    
    def new
        
    end
    
    def create
        user = User.find_by(email: params[:sessions][:email].downcase)
        if user && user.authenticate(params[:sessions][:password])
            session[:user_id] = user.id
            flash[:notice] = "Acceso Permitido"
            redirect_to user
        else
            flash.now[:alert] = "No coinciden los datos"
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Log Out"
        redirect_to login_path
    end
    
end
