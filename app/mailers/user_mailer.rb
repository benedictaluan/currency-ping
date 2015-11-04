class UserMailer < ActionMailer::Base
  default from: 'hello@findings.co'

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
         subject: "#{t('mailer.alert')} - #{@subscription.base.currency_code}/#{@subscription.country.currency_code}"
  end
end
