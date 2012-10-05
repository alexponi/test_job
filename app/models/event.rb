class Event < ActiveRecord::Base
  has_event_calendar
  belongs_to :user
  attr_accessible :name, :period, :start_at, :end_at, :user_id, :period_id, :end_period, :color
  
  validates :name, :presence => true
  validates :user_id, :presence => true
  validates :start_at, :presence => true
  validates :end_at, :presence => true
  
  after_save :periodical_events
  # after_save :change_color

  def periodical_events
    if period == " "
    elsif period == "day"
      i = 1
      while start_at + i.day <= end_period        
      eventd = Event.new(:name => name, 
                         :user_id => user_id,
                         :start_at => start_at + i.day, 
                         :end_at => end_at + i.day, 
                         :period_id => id,
                         :color => color,
                         :end_period => end_period)
      i += 1 
      eventd.save!
      end
    elsif period == "week"
      i = 1
      while start_at + i.week <= end_period        
      eventd = Event.new(:name => name, 
                         :user_id => user_id,
                         :start_at => start_at + i.week, 
                         :end_at => end_at + i.week, 
                         :period_id => period_id,
                         :color => color,
                         :end_period => end_period)
      i += 1 
      eventd.save!
      end
    elsif period == "month"
      i = 1
      while start_at + i.month <= end_period        
      eventd = Event.new(:name => name, 
                         :user_id => user_id,
                         :start_at => start_at + i.month, 
                         :end_at => end_at + i.month, 
                         :period_id => period_id,
                         :color => color,
                         :end_period => end_period)
      i += 1 
      eventd.save!
      end
    elsif period == "year"
      i = 1
      while start_at + i.year <= end_period        
      eventd = Event.new(:name => name, 
                         :user_id => user_id,
                         :start_at => start_at + i.year, 
                         :end_at => end_at + i.year, 
                         :period_id => period_id,
                         :color => color,
                         :end_period => end_period)
      i += 1 
      eventd.save!
      end
    end
  end

  # def change_color
  #   if self.color == 0
  #     self.color == "red"
  #   end
  # end
end