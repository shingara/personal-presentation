Then /^I should not see "([^\"]*)"$/ do |text|
    webrat_session.response.body.to_s.should_not =~ /#{text}/m
end

Then /^I should see an? (\w+) message$/ do |message_type|
    webrat_session.response.should have_xpath("//*[@class='#{message_type}']")
end
