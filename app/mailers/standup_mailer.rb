class StandupMailer < ApplicationMailer
  include EventsHelper

  def daily(standup)
    @standup = standup
    @event = events_today.sample
    mail(to: @standup.team.recipient_email, subject: 'Daily Scrupdate')
  end
end
