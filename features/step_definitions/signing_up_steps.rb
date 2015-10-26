When /^I sign up with '(.*)'$/ do |email|
  @page.signup_with(email, 'whatwhat', 'whatwhat')
end

When /^I try signing up with a taken email$/ do
  @page.signup_with('what@what.what', 'whatwhat', 'whatwhat')
end

Then /^I should not be signed up$/ do
  expect(@page.signup?).to be true
end
