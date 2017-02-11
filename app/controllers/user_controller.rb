class UserController < ApplicationController


	def logout
		session[:id]=nil
		session[:key]=nil
		redirect_to '/'
		return
	end

	def login_c
		if session[:id]
			redirect_to '/user'
			return
		end

		redirect_to '/user/login_c'
		return
	end


	def login
	
	end

	def main
	
	end

	def check
		adhNo = params['adhNo']
		pass = params['pass']

		user = User.find_by_adhNo_and_pass(adhNo,pass)

		if user 
			session[:id] = user.id
			session[:key]= "user"
			redirect_to '/user'
			return
		end

		redirect_to '/user/login'
		return

	end

	def signup
	end

	def signup_p

		adhNo = params['adhNo']
		pass = params['pass']

		user = User.find_by_adhNo_and_pass(adhNo,pass)

		if user 
			redirect_to '/user/signup'
			return
		end

		user = User.new

		user.adhNo = adhNo
		user.pass = pass
		#doc.hospital = params['hospital']
		#doc.spec = params['spec']
		user.name = params['name']
		#doc.save
		user.dob=params['dob']
		user.gender=params['gender']
		user.save
		session[:id]=user.id
		session[:key]="user"
		redirect_to '/user'
		return
	end

	def validate
		puts "","","",params[:username],"","",""
		return redirect_to '/user'
	end

end
