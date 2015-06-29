class PaypalController < ConsoleController
  include Console::UserManagerHelper

  def new
    result = user_manager_subscription_create('paypal')

    if result.code === 302
      redirect_to result.header["location"]
    else
      redirect_to account_path, :flash => {:error => result.content[:message]}
    end
  end

  def confirm
    result = user_manager_subscription_confirm

    if result.code != 200
      redirect_to account_path, :flash => {:error => result.message}
    else
      redirect_to account_path, :flash => {:success => _("Your account is validated. Thank you!")}
    end
  end

  def cancel
    result = user_manager_subscription_cancel
    if result.code === 200 and result.content[:success]
      redirect_to account_path, :flash => {:warning => _("Subscription canceled")}
    else
      redirect_to account_path, :flash => {:error => result.content[:message]}
    end
  end
end
