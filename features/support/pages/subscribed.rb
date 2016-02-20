class Subscribed < SitePrism::Page
  set_url '/success'

  element :message, 'a.logo'
  element :description, '.description'
  element :base, 'select#subscription_base'
  element :country, 'select#subscription_country'
  element :email, 'input#subscription_user_email'
  element :submit, 'input#subscription-submit'
end