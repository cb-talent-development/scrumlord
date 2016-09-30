module EventsHelper
  def events_today
    get_events["data"]["Events"]
  end

  private

  def get_events
    JSON.parse(Excon.get('http://history.muffinlabs.com/date').body)
  end
end
