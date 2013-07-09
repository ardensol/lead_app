class RelationshipsController < ApplicationController
	before_filter :authenticate_vendor!

	def create
		@quote = Quote.find(params[:relationship][:quote_id])
		current_vendor.bid!(@quote)
		redirect_to @quote
	end		
end
	