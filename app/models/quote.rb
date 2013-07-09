class Quote < ActiveRecord::Base
  attr_accessible :budget, :comments, :event_date, :event_time, :quote_type, :solicitation_type, :wedding_style, :zip_code
  
  belongs_to :user

	has_many :reverse_relationships, foreign_key: "quote_id", class_name: "Relationship", dependent: :destroy
	has_many :vendors, through: :reverse_relationships, source: :vendor


end
