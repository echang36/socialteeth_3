class UserProfileController < ApplicationController
  
  before_filter :authenticate_user!
  
  def show
	
	if user_signed_in?
		
		@owned_ads=Ad.find_by_user_email(current_user.email)
		#@contributions=Contribution.where(user: current_user)
	else
		redirect_to sign_in_path and return
	end	
  
  end

end
