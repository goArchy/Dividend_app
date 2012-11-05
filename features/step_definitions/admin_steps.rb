Given /^I am logged in as an administrator$/ do
  user = FactoryGirl.create(:user, email: "test@example.com")
  user.admin = true
  user.save
  user.admin.should == true

end

Given /^I am on the admin panel page$/ do
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
end

When /^I press "([^"]*)"$/ do |arg1|
end

Then /^I should see "([^"]*)"$/ do |arg1|
end

Given /^there is a stock with company_name: "([^"]*)"$/ do |arg1|
end

When /^I follow "([^"]*)"$/ do |arg1|
end

