Then(/^I should see the logo$/) do
  expect(@homepage).to have_logo
end

Then(/^I should see the description$/) do
  expect(@homepage).to have_description
end

Then(/^I should see the subscription form$/) do
  expect(@homepage).to have_base
  expect(@homepage).to have_country
  expect(@homepage).to have_email
  expect(@homepage).to have_submit
end