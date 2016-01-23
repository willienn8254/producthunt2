# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class VotesController < ApplicationController

	def create
	  product = Product.find(params[:product_id])
	  product.votes.create(user: current_user)

	  redirect_to root_path
	end

	def destroy
	  product = Product.find(params[:product_id])
	  product.votes.where(user: current_user).take.try(:destroy)

	  redirect_to root_path
	end
	
end
