class HomePage < SitePrism::Page
  set_url '/'

  element :logo, 'a.logo'
  element :description, '.description'
  element :base, 'select#subscription_base'
  element :country, 'select#subscription_country'
  element :email, 'input#subscription_user_email'
  element :submit, 'input#subscription-submit'
  
  element :success_message, '.flash > h1'
end