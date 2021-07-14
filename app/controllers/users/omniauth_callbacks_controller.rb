# app/controllers/users/omniauth_callbacks_controller.rb:
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env['omniauth.auth'])
    @user.full_name = request.env['omniauth.auth'].info.name
    @user.profile_url = request.env['omniauth.auth'].info.image
    @user.save if @user.valid?
    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url(@user), alert: @user.errors.full_messages.join("\n")
    end
  end
end
