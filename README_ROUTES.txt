


       user_profile_show GET    /user_profile/show(.:format)      {:controller=>"user_profile", :action=>"show"}
	   
           contributions GET    /contributions(.:format)          {:action=>"index", :controller=>"contributions"}
                         POST   /contributions(.:format)          {:action=>"create", :controller=>"contributions"}
        new_contribution GET    /contributions/new(.:format)      {:action=>"new", :controller=>"contributions"}
       edit_contribution GET    /contributions/:id/edit(.:format) {:action=>"edit", :controller=>"contributions"}
            contribution GET    /contributions/:id(.:format)      {:action=>"show", :controller=>"contributions"}
                         PUT    /contributions/:id(.:format)      {:action=>"update", :controller=>"contributions"}
                         DELETE /contributions/:id(.:format)      {:action=>"destroy", :controller=>"contributions"}
						 
              home_index GET    /home/index(.:format)             {:controller=>"home", :action=>"index"}
			  
                     ads GET    /ads(.:format)                    {:action=>"index", :controller=>"ads"}
                         POST   /ads(.:format)                    {:action=>"create", :controller=>"ads"}
                  new_ad GET    /ads/new(.:format)                {:action=>"new", :controller=>"ads"}
                 edit_ad GET    /ads/:id/edit(.:format)           {:action=>"edit", :controller=>"ads"}
                      ad GET    /ads/:id(.:format)                {:action=>"show", :controller=>"ads"}
                         PUT    /ads/:id(.:format)                {:action=>"update", :controller=>"ads"}
                         DELETE /ads/:id(.:format)                {:action=>"destroy", :controller=>"ads"}
						 
                    root        /                                 {:controller=>"home", :action=>"index"}
					
        new_user_session GET    /users/sign_in(.:format)          {:action=>"new", :controller=>"devise/sessions"}
            user_session POST   /users/sign_in(.:format)          {:action=>"create", :controller=>"devise/sessions"}
    destroy_user_session GET    /users/sign_out(.:format)         {:action=>"destroy", :controller=>"devise/sessions"}
           user_password POST   /users/password(.:format)         {:action=>"create", :controller=>"devise/passwords"}
       new_user_password GET    /users/password/new(.:format)     {:action=>"new", :controller=>"devise/passwords"}
      edit_user_password GET    /users/password/edit(.:format)    {:action=>"edit", :controller=>"devise/passwords"}
                         PUT    /users/password(.:format)         {:action=>"update", :controller=>"devise/passwords"}
cancel_user_registration GET    /users/cancel(.:format)           {:action=>"cancel", :controller=>"devise/registrations"}
       user_registration POST   /users(.:format)                  {:action=>"create", :controller=>"devise/registrations"}
   new_user_registration GET    /users/sign_up(.:format)          {:action=>"new", :controller=>"devise/registrations"}
  edit_user_registration GET    /users/edit(.:format)             {:action=>"edit", :controller=>"devise/registrations"}
                         PUT    /users(.:format)                  {:action=>"update", :controller=>"devise/registrations"}
                         DELETE /users(.:format)                  {:action=>"destroy", :controller=>"devise/registrations"}