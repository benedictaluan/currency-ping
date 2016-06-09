class HomePage < SitePrism::Page
  set_url '/'

  element :logo, 'a.logo'
  element :summary, '.summary'
  element :base_select, 'select#job_base_id'
  element :country_select, 'select#job_country_id'
  element :email_input, 'input#job_user_email'
end