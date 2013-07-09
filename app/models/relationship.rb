class Relationship < ActiveRecord::Base
  attr_accessible :quote_id

  belongs_to :quote
	belongs_to :vendor

  	validates :vendor_id, presence: true
  	validates :quote_id, presence: true

end
