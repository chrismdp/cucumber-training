When /^I visit the checkout homepage$/ do
  visit "/"
end

Then /^I should see the checkout title$/ do
  page.should have_css("Checkout")
end
