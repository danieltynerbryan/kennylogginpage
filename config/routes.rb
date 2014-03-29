Kennylogginpage::Application.routes.draw do

	resources :responses
	
	match '/response', to:	'responses#get_response', via: 'get'

	root :to => "kenny_loggin#home"
    	
	get "kenny_loggin/loggin"
  
end
