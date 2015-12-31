Then(/^I should see the logo$/) do
  expect(@homepage).to have_logo
end

Then(/^I should see the description$/) do
  expect(@homepage).to have_description
end

Then(/^I should see the subscription form$/) do
  expect(@homepage).to have_email_input
  expect(@homepage).to have_from_select
  expect(@homepage).to have_to_select
  expect(@homepage).to have_submit_button
end