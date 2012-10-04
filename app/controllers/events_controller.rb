class EventsController < ApplicationController
  #before_filter :signed_in_user

  def create
    @event = current_user.events.build(params[:micropost])
    if @event.save
      flash[:success] = "Event created!"
      redirect_to current_user_path
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
 