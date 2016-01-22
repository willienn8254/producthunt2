# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommentsController < ApplicationController
	def create
  product = Product.find(params[:product_id])
  product.comments.create(comments_params)

  redirect_to product
end

private
  def comments_params
    params.require(:comment).permit(:body).merge(user: current_user)
  end
end
