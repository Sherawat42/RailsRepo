class ChemController < ApplicationController



	def logout
		session[:id]=nil
		session[:key]=nil
		redirect_to '/'
		return
	end

	def login_c
		if session[:id]
			redirect_to '/chem'
			return
		end

		redirect_to '/chem/login_c'
		return
	end


	def login
	
	end

	def main
	
	end

	def check
		adhNo = params['adhNo']
		pass = params['pass']

		chem = Chemist.find_by_adhNo_and_pass(adhNo,pass)

		if chem 
			session[:id] = chem.id
			session[:key]= "chem"
			redirect_to '/chem'
			return
		end

		redirect_to '/chem/login'
		return

	end

	def signup
	end

	def signup_p

		adhNo = params['adhNo']
		pass = params['pass']

		chem = Chemist.find_by_adhNo_and_pass(adhNo,pass)

		if chem 
			redirect_to '/chem/signup'
			return
		end

		chem = Chemist.new

		chem.adhNo = adhNo
		chem.pass = pass
		chem.add = params['add']
		chem.name = params['name']
		#doc.hospital = params['hospital']
		#doc.spec = params['spec']
		#doc.name = params['name']
		#doc.save
		
		chem.save
		session[:id]=chem.id
		session[:key]="chem"
		redirect_to '/user'
		return
	end




end
