When /^I visit the BBC news homepage$/ do
  visit "/"
end

Then /^I should see the BBC logo$/ do
  expect(page).to have_css("#blq-blocks")
end
