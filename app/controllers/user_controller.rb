class UserController < ApplicationController

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
		#doc.name = params['name']
		#doc.save
		user.dob=params['dob']
		user.gender=params['gender']
		session[:id]=user.id
		redirect_to '/user'
		return
	end


end
