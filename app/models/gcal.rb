class Gcal < ApplicationRecord
  def insert_event(event)   #UserのGmailを受け取るので引数が必要
      email = event[0]
      start_time = DateTime.parse(event[2])
      end_time = DateTime.parse(event[3])

       event_resorces = {
                'summary' => event[1],#fullcalendarのtitle
                'start' => {
                            'dateTime' => start_time
                           },
                'end' =>   {
                            'dateTime' => end_time
                           },
                }
  result = @client.execute(:api_method => @service.events.insert,
                               :parameters => {'calendarId' => email },
                               :body => JSON.dump(event_resorces),
                               :headers => {'Content-Type' =>   'application/json'})
  end
end
