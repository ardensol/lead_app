class Vendor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :relationships, foreign_key: "vendor_id", dependent: :destroy 
    has_many :quotes, through: :relationships, source: "quote_id"

  acts_as_messageable

	def bidding?(quote)
    	relationships.find_by_quote_id(quote.id)
    end

    def bid!(quote)
    	relationships.create!(quote_id: quote.id)
    end         

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
