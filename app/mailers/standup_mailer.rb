class StandupMailer < ApplicationMailer
  default from: config.smtp.sender_address

  def daily(standup)
    @standup = standup
    mail(to: @standup.team.recipient_email, subject: 'Daily Scrupdate')
  end
end
