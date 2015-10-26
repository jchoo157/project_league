class SignupPage < AccountInfoPage
  include PageObject

  URL = 'http://localhost:3000/accounts/sign_up'

  text_field(:email, id: 'account_email')
  text_field(:password, id: 'account_password')
  text_field(:confirm_password, id: 'account_password_confirmation')

  link(:sign_out, href: '/accounts/sign_out')

  button(:signup, type: 'submit')

  def open_signup_page
    browser.goto URL
  end

  def signup_without_confirmation(email, password)
    self.email = email
    self.password = password
    signup
  end

  def signup_with(email, password, confirm_password)
    self.email = email
    self.password = password
    self.confirm_password = confirm_password
    signup
  end
end