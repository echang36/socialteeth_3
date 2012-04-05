class UserProfileController < ApplicationController
  
  before_filter :authenticate_user!
  
  def show
	
	if user_signed_in?
		
		@owned_ads= Ad.where(user_id: current_user.id)
		
		contribution = Contribution.where(user_id: current_user.id)
		@your_contributions=Hash.new
		contribution.each do |c|
			ad_title=(Ad.find(c.ad_id)).title
			@your_contributions[ad_title] = c.amount
		end
		
		#@contributions=Contribution.where(user: current_user)
	else
		redirect_to sign_in_path and return
	end	
  
  end
  
    protected
	def check_if_owner (ad_id)
		if current_user.id != ad_id
			return false
		end
	end
	

end
