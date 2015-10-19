Given /^I am on the home page$/ do
  @home_page = HomePage.new(@browser)
  @home_page.open_home_page
end

Given /^I am on the log in page$/ do
  @login_page = LoginPage.new(@browser)
  @login_page.open_login_page
end