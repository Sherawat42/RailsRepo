Rails.application.routes.draw do

  root  'home#welcome'

  get '/doc/login' => 'doc#login'
  get '/chem/login' => 'chem#login'
  get '/user/login' => 'user#login'
  post '/doc/check' => 'doc#check'
  get '/doc/signup' => 'doc#signup'
  post '/doc/signup' => 'doc#signup_p'
  get '/doc' => 'doc#main'

end
