class DocController < ApplicationController

	def login
	
	end

	def main
	
	end

	def check
		adhNo = params['adhNo']
		pass = params['pass']

		doc = Doctor.find_by_adhNo_and_pass(adhNo,pass)

		if doc 
			session[:id] = doc.id
			redirect_to '/doc'
			return
		end

		redirect_to '/doc/login'
		return

	end

	def signup
	end

	def signup_p

		adhNo = params['adhNo']
		pass = params['pass']

		doc = Doctor.find_by_adhNo_and_pass(adhNo,pass)

		if doc 
			redirect_to '/doc/signup'
			return
		end

		doc = Doctor.new

		doc.adhNo = adhNo
		doc.pass = pass
		doc.hospital = params['hospital']
		doc.spec = params['spec']
		doc.name = params['name']
		doc.save
		session[:id]=doc.id
		redirect_to '/doc'
		return
	end

end





