Given(/^the app is properly setup$/) do
  @homepage = HomePage.new
end

When(/^I visit the homepage$/) do
  @homepage.load
end

Then(/^I should be on "(.*?)"$/) do |path|
  expect(current_path).to eq(path)
end

When(/^I click the "([^"]*)" link$/) do |link|
  begin
    click_link(link)
  rescue Capybara::Ambiguous => e
    first(:link, link).click
  end
end