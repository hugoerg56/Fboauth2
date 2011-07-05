require 'rubygems'
require 'rspec'
require 'rails'
require 'Fboauth2'

describe "Fboauth2 tests" do
  it "get url to graph.facebook.com" do
    params = {"config"=>"test", "param1"=>"test"}
    url = Fboauth2::Newfbclient.get_auth("127.0.0.1:3000", params)
    reg = /(https):\/\/(graph.facebook.com)\/(oauth)\/(authorize)[a-z]*/
    match_r = (reg.match(url))? true : false
    match_r.should == true
  end
  
  it "get a client" do
    client = Fboauth2::Newfbclient.get_client
    client.facebook_uri.should == "https://graph.facebook.com"
  end
  
  it "get callback url" do
    callback_url = Fboauth2::Newfbclient.get_url("localtest")
    callback_url.should == "http://localtest/oauth2_facebook/fb_callback?config=test&param1=test&"
  end
  
end
