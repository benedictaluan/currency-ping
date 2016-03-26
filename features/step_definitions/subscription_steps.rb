Given(/^I have exchange rates data$/) do
  @base = FactoryGirl.create(:base)
  @country = FactoryGirl.create(:country)
end

When(/^I enter my subscription details$/) do
  @homepage.base.select(@base.currency_name)
  @homepage.country.select(@country.currency_name)
  @homepage.email.set('benedict.aluan@gmail.com')
  @homepage.submit.click
end

Then(/^I should see a success message$/) do
  expect(@homepage).to have_success_message
end

Then(/^I should receive a welcome email$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should receive a subscription email alert$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^the currency updates$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I have the following subscriptions:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end