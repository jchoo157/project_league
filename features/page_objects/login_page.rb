class LoginPage < HomePage
  include PageObject

  URL = 'http://localhost:3000/accounts/sign_in'

  text_field(:email, id: 'account_email')
  text_field(:password, id: 'account_password')

  link(:sign_out, href: '/accounts/sign_out')


  button(:login, type: 'submit')

  def open_login_page
    @browser.goto URL
  end

  def login_with(email, password)
    self.email = email
    self.password = password
  end
end