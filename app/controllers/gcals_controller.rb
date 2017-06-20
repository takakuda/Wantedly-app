class GcalsController < ApplicationController
  def create_event_self
    event = [
             current_user[:email],
             params[:title],
             params[:start],
             params[:end]
            ]
#UserのGmailが必要になるのでcurrent_user[:email]で渡す
    new_event = Gcal.new.insert_event(event)
  end
end
