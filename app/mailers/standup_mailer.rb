class StandupMailer < ApplicationMailer
  default from: 'setme@setme.com'

  def daily(standup)
    @standup = standup
    mail(to: @standup.team.standup_email, subject: 'Daily Scrupdate')
  end
end
