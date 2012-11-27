class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  
  def client
  @client ||= FBGraph::Client.new(:client_id => '321938887901819',:secret_id =>'1db2885aae78bf1b334f4d0715c9e01f')
end
end
