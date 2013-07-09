class Quote < ActiveRecord::Base
  attr_accessible :budget, :comments, :event_date, :event_time, :quote_type, :solicitation_type, :wedding_style, :zip_code
end
