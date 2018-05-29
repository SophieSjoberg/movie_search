When("I visit the landing page") do
  visit root_path
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value 
end

When("I click {string}") do |button|
  click_link_or_button button
end
