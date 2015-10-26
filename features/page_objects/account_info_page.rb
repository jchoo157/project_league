class AccountInfoPage
  include PageObject

  text_field(:email, id: 'account_email')
  text_field(:password, id: 'account_password')

end