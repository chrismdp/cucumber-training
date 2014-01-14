When /^I visit the BBC news homepage$/ do
  visit "/"
end

Then /^I should see the BBC logo$/ do
  page.should have_css("#blq-blocks")
end
