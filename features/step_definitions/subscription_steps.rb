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
  expect(ActionMailer::Base.deliveries.last.subject).to eq UserMailer.email_subject(@exchange_rate.base, @exchange_rate.country)
end

When(/^the currency updates$/) do
  exchange_rate = FactoryGirl.create(:exchange_rate, rate: 60)
end