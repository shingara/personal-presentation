Given /^I have one user "([^\"]*)" with password "([^\"]*)"$/ do |login, password|
  # CODE qui cree l'utilisateur
end

Given /^I have a logged user "([^\"]*)" with password "([^\"]*)"$/ do |login, password|
  %{Given I have one user "#{login}" with password "#{password}"}
  # CODE qui rempli le formulaire et le valide
end
