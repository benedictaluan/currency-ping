class HomePage < SitePrism::Page
  set_url '/'

  element :logo, 'a.logo'
  element :description, '.description'
  element :base, 'select#subscription_base_id'
  element :country, 'select#subscription_country_id'
  element :email, 'input#subscription_user_attributes_email'
  element :submit, 'input#subscription-submit'
  
  element :success_message, '.flash > h1'
end