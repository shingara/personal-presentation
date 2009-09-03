When /^I follow "(.*)"$/ do |link|
  @response = click_link(link)
end

When /^I fill in "(.*)" with "(.*)"$/ do |field, value|
  @response = fill_in(field, :with => value) 
end
