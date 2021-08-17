class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show, :destory]
    before_action :require_user, only: [:edit, :update, :show, :algoritm, :index]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if !logged_in?
            session[:user_id] = @user.id    
        end

        if @user.save
            flash[:notice] = "Su registro fue exitoso"
            redirect_to @user
        else
            render 'new'
        end
        
    end

    def show
        
    end

    def index
        
    end

    def edit
        
    end
    
    def update
        if @user.update(user_params)
            flash[:notice] = "Tu información fue correctamente actualizada"
            redirect_to @user
        else
            render 'edit'
        end
    end

    def auser
        r = current_user.id
        f = User.all
        @aluser = []
        for usr in f do
            if usr.ident == r
                @aluser.push(usr)
            end
        end
        
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:nombre, :email, :rfc, :password, :direccion, :telefono, :website, :ident)
    end

end
