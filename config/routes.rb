Rails.application.routes.draw do

  root  'home#check'
  get '/next' => 'home#welcome'
  get '/home/toggle_done/:id' => 'home#toggle_done'

  get '/doc/login' => 'doc#login_c'
  get '/doc/login_c' => 'doc#login'

  get '/user/login' => 'user#login_c'
  get '/user/login_c' => 'user#login'

  get '/chem/login' => 'chem#login_c'
  get '/chem/login_c' => 'chem#login'
  post '/chem/check' => 'chem#check'
 get '/chem/signup' => 'chem#signup'
  post '/chem/signup' => 'chem#signup_p'
 get '/chem' => 'chem#main'
 post '/chem/customer' => 'chem#customer'

  post '/doc/check' => 'doc#check'
  get '/doc/signup' => 'doc#signup'
  post '/doc/signup' => 'doc#signup_p'
  get '/user/signup' => 'user#signup'
  post '/user/signup' => 'user#signup_p'
  get '/doc' => 'doc#main'
  get '/user' => 'user#main'
  post '/doc/pres' => 'doc#pres'
  get '/home/find' => 'home#find'
  post '/home/find' => 'home#find_p'
  get '/patient_pres' => 'home#patient_pres'

  get '/user/logout' => 'user#logout'
  get '/doc/logout' => 'doc#logout'
  get '/chem/logout' => 'chem#logout'

end
