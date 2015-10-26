Given /^I am on the (.*) page$/ do |page|
  if page == 'home'
    @page = HomePage.new(@browser)
    @page.open_home_page

  elsif page == 'log in'
    @page = LoginPage.new(@browser)
    @page.open_login_page

  elsif page == 'sign up'
    @page = SignupPage.new(@browser)
    @page.open_signup_page

  else
    return 'page does not exist'
  end
end

# Given /^I am on the log in page$/ do
#   @login_page = LoginPage.new(@browser)
#   @login_page.open_login_page
# end
#
# Given /^I am on the sign up page$/ do
#   @signup_page = SignupPage.new(@browser)
#   @signup_page.open_signup_page
# end