class FacebookController < ApplicationController
def index
end


def facebook_login_start
redirect_to client.authorization.authorize_url(:redirect_url => "http://localhost:3000/",:scope =>'email,user_photos,friends_photos,publish_stream')
end

def facebook_show
  access_token = client.authorization.process_callback(params[:code],:redirect_url => "http://localhost:3000/")
  session[:access_token] = access_token
  render :json => client.selection.me.friends.info!.data,:layout =>  false
end

end
