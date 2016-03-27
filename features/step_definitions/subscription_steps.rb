Given(/^I have exchange rates data$/) do
  @exchange_rate = FactoryGirl.create(:exchange_rate)
end

When(/^I enter my subscription details$/) do
  @homepage.base.select('New Zealand Dollar')
  @homepage.country.select('Philippine Peso')
  @homepage.email.set('benedict.aluan@gmail.com')
  @homepage.submit.click
end

Then(/^I should see a success message$/) do
  expect(@homepage).to have_success_message
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