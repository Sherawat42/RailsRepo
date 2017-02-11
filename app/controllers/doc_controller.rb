class DocController < ApplicationController

	def login_c
		if session[:id]
			redirect_to '/doc'
			return
		end

		redirect_to '/doc/login_c'
		return
	end

	def logout
		session[:id]=nil
		session[:key]=nil
		redirect_to '/'
		return
	end

	def login
	
	end

	def main
	
	end

	def pres

		pre = Press.new
		pre.p_adhNo = params['p_adhNo']
		pre.d_adhNo = params['d_adhNo']
		pre.t_o_p = params['t_o_p']
		pre.med_id = params['med_id']
		pre.dosage = params['dosage']
		pre.day_span = params['day_span']
		pre.n_o_t = params['n_o_t']
		pre.spl_rm = params['spl_rm']
		pre.success = params['success']
		pre.save
		redirect_to '/doc'
		return
	end

	def check
		adhNo = params['adhNo']
		pass = params['pass']

		doc = Doctor.find_by_adhNo_and_pass(adhNo,pass)

		if doc 
			session[:id] = doc.id
			session[:key] = "doc"
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
		session[:key]="doc"
		redirect_to '/doc'
		return
	end

end





