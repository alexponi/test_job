class Event < ActiveRecord::Base
  has_event_calendar
  belongs_to :user
  attr_accessible :name, :start_at, :end_at

  

  # validates :name, presence: true, length: { maximum: 140 }
  # validates :user_id, presence: true

def create
    @event  = current_user.event.build(params[:micropost])
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_path
    else
      render 'pages/home'
    end
  end





end
