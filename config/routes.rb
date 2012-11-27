Monu::Application.routes.draw do
 match "facebook/facebook_login_start" => "facebook#facebook_login_start"
  match "facebook/facebook_show" => "facebook#facebook_show"
   root :to => 'facebook#index'
 end


  

 
   
