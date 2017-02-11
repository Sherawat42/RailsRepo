class HomeController < ApplicationController
  

  def toggle_done

    pre = Press.find(params[:id])
    pre.done = "done"
    redirect_to '/patient_pres'
  end


  def check

    if session[:key]

       if session[:key] == "doc"
         redirect_to '/doc/login'
         return
       elsif session[:key] == "chem"
         redirect_to '/chem/login'
         return
       elsif session[:key] == "user"
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
  $use = nil
  $pr = nil
  def find_p


  	$use= User.find_by_adhNo(params['p_adhNo'])


  	$pr= Press.where(p_adhNo: params['p_adhNo'])

  	redirect_to '/patient_pres'

  end

  def patient_pres
    @useru = $use 
    @pres = $pr 
    puts "","","harami minku",@pres,@pres.first 
  end



end
