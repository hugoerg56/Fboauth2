require 'Fboauth2'

class FacebookoauthController < ApplicationController

  def auth
    url = Fboauth2::Newfbclient.get_auth(request.env["HTTP_HOST"], params) #piden la creacion de un nuevo fb client y regresa la url para hacer el redirect a fb, se envia el url del host como parametro
    redirect_to url #redirect a facebook para hacer el auth
  end
  
  def callback
    #callback functions
    
    conf_data = Fboauth2::Newfbclient.get_conf_data 
    
    if !conf_data[params[:config]].nil? && conf_data[params[:config]] != "" && !params[:code].nil? && params[:code] != ""
      
      #toma los datos del usuario de facebook y los coloca en fb_user despues del auth
      client = Fboauth2::Newfbclient.auth_callback(params[:code], Fboauth2::Newfbclient.get_url(request.env["HTTP_HOST"], params[:config]))
      fb_user = client.selection.me.info! 
      
      #crea un nuevo registro en la db
      if conf_data[params[:config]]["hmodel"] == "t"
       Fboauth2::Newfbclient.crate_new_m(conf_data, params, fb_user)
      end
      
      #Publica mensaje en facebook
      if conf_data[params[:config]]["hfbmsg"] == "t"
       Fboauth2::Newfbclient.send_fb_msg(params[:config], fb_user)
      end      
    
      redirect_to Fboauth2::Newfbclient.get_redirect_path(params)
    
    else
  
      puts "**** Fboauth2 ERROR: config parameter is required or fbuser not allow permission to app****"
      redirect_to "/"
  
    end
  end
  

end