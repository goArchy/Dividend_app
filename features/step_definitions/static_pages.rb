Given /^I am on the root page$/ do
  visit root_path
end

Then /^I should see a header with title Dividend finder$/ do
  page.should have_selector('h1', text: "Dividend Finder")
end

Given /^I am on the about page$/ do
  visit about_path
end

Then /^I should see an about header$/ do
  page.should have_selector('h1', text: "About DF")
end

