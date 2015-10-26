Then /^I should be signed in$/ do
  expect(@page.sign_out?).to be true
end

