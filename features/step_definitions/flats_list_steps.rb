Given /^flats list$/ do
  100.times {
    FactoryGirl.create(:flat, :flat_number => FactoryGirl.generate(:flat_number))
  }
end

When /^I go to main page$/ do
  visit "/"
end

Then /^I see flats list$/ do
  page.should have_content('f. 30')
end

When /^I go to last page$/ do
  click_link '4'
end

Then /^I see last list item$/ do
  page.should have_content('f. 100')
end

When /^I go to first page$/ do
  click_link '1'
end

Then /^I see first list item$/ do
  page.should have_content('f. 1')
end 
