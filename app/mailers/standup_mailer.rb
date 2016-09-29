class StandupMailer < ApplicationMailer
  default from: config.mailer.from_email

  def daily(standup)
    @standup = standup
    mail(to: @standup.team.recipient_email, subject: 'Daily Scrupdate')
  end
end
