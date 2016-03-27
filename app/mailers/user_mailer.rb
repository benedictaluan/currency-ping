class UserMailer < ActionMailer::Base
  default from: 'hello@mail.findings.co'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send_confirmation.subject
  #
  def email_alert(exchange_rate, subscription)
    @subscription = subscription
    @user = @subscription.user
    @rate = exchange_rate.rate

    mail to: @user.email,
         subject: UserMailer.email_subject(@subscription.base, @subscription.country)
  end

  def self.email_subject(base, country)
    "#{I18n.t('mailer.alert')} - #{base.currency_code}/#{country.currency_code}" 
  end
end
