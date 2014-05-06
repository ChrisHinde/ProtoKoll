include ApplicationHelper

def sign_in(user, options={})
  if options[:no_capybara]
    # Sign in when not using Capybara.
    #remember_token = User.new_remember_token
    session[:remember_token] = user.id
    #user.update_attribute(:remember_token, User.digest(remember_token))
  else
    visit signin_path
      fill_in 'E-post',   with: user.email.upcase
      fill_in 'Lösenord', with: user.password
      click_button 'Logga in'
  end
end
