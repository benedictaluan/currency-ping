Then(/^I should see the logo$/) do
  expect(@homepage).to have_logo
end

Then(/^I should see the summary$/) do
  expect(@homepage).to have_summary
end

Then(/^I should see the job form$/) do
  expect(@homepage).to have_base_select
  expect(@homepage).to have_country_select
  expect(@homepage).to have_email_input
end