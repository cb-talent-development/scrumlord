class StandupMailer < ApplicationMailer
  def daily(standup)
    @standup = standup
    mail(to: @standup.team.recipient_email, subject: 'Daily Scrupdate')
  end
end
