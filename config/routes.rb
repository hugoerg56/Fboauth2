
Rails.application.routes.draw do
  match '/oauth2_facebook/fb_auth' => "Facebookoauth#auth"
  match '/oauth2_facebook/fb_callback' => "Facebookoauth#callback"
end