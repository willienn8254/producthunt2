# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(100)
#  password_digest :string
#  name            :string(100)
#  twitter_handle  :string(50)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UsersController < ApplicationController



	def new

		@user=User.new

	end


	def create

	@user = User.new(user_params)
		  if @user.save
		    redirect_to root_path
		  else
		    render :new
		  end

	end

	private
		  def user_params
		    params.require(:user).permit(:email, :password, :name, :twitter_handle)
		  end
end
