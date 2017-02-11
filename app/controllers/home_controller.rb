class HomeController < ApplicationController
  
  def check

    if session[:key]

       if session[:key] == "doc"
         redirect_to '/doc/login'
         return
       else
         redirect_to '/user/login'
         return
       end
    end
               
    redirect_to '/next'     

  end

  def welcome
  
  end

  def find

  end

  def find_p


  	@user = User.find_by_adhNo(params['p_adhNo'])
  	@pres = Press.find_by_p_adhNo(params['p_adhNo'])

  	redirect_to '/patient_pres'

  end

  def patient_pres

  end

end
