Given /^the following people:$/ do |people|
  Person.create!(people.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) person$/ do |pos|
  visit people_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following people:$/ do |expected_people_table|
  table = find('table').all('tr').map { |row| row.all('th, td').map { |cell| cell.text.strip } }
  expected_people_table.diff!(table)
end
