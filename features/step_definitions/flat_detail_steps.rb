Given /^'(\d+)' flat items$/ do |flats|
  flats.to_i.times do |flat|
    FactoryGirl.create(:flat,
                       :flat_number => FactoryGirl.generate(:flat_number))
  end
end

Given /^I visit main page$/ do
  visit '/'
end

When /^I click link 'show'$/ do
  click_link 'Show'
end

Then /^I see flat detail information$/ do
  page.should have_content('Description')
end

When /^I click link 'back'$/ do
  click_link 'Back'
end

Then /^I see previous page$/ do
  page.should have_content('f. 1')
end
          
