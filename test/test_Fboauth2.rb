require 'helper'

class TestFboauth2 < Test::Unit::TestCase
  
  should "get url to auth on facebook" do
    params = {"config"=>"test", "param1"=>"test"}
    url = Fboauth2::Newfbclient.get_auth("127.0.0.1:3000", params)
    reg = /(https):\/\/(graph.facebook.com)\/(oauth)\/(authorize)[a-z]*/
    match_r = (reg.match(url))? true : false
    assert_equal match_r, true
  end
  
  should "get a client object from fbgraph gem" do
    client = Fboauth2::Newfbclient.get_client
    assert_equal client.facebook_uri, "https://graph.facebook.com"
  end
  
  should "get a callback url" do
    params = {"config"=>"test", "param1"=>"test"}
    Fboauth2::Newfbclient.get_auth("127.0.0.1:3000", params)
    callback_url = Fboauth2::Newfbclient.get_url("localtest")
    assert_equal callback_url, "http://localtest/oauth2_facebook/fb_callback?config=test&param1=test&"
  end
end
