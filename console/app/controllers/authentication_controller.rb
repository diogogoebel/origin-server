class AuthenticationController < Console.config.parent_controller.constantize
  layout 'authentication'

  def signin
  end

  def signout
    reset_session

    redirect_to signin_path
  end

  def auth
    authentication = Authentication.new
    authentication.generate params[:login], params[:password]
    
    session[:authentication] = authentication

  	redirect_to applications_path
  end

  def reset
  end

  def change_password
    session[:token] = params[:token]
  end

  def update_password
    if params[:password] != params[:'verify-password']
      redirect_to signin
    end

    authentication = Authentication.new
    updated = authentication.update_password params[:password], session[:token]

    if updated
      flash[:success] = "New password saved."
    else
      flash[:error] = "Error to save your new password."
    end

    redirect_to signin_path    
  end

  def send_token
    authentication = Authentication.new
    authentication.reset_password params[:login]

    flash[:success] = "Password reset requested."

    redirect_to signin_path
  end
end


