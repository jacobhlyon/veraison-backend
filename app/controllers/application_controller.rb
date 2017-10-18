class ApplicationController < ActionController::API

	def issue_token(payload)
		JWT.encode(payload, "smoothie", "HS256")
	end

	def decode_token(token)
		begin
			JWT.decode(token, "smoothie", true, { :algorithm => 'HS256' })
		rescue JWT::DecodeError
			[]
		end
	end

	def token
		if bearer_token = request.headers["Authorization"]
			jwt_token = bearer_token.split(" ")[1]
		else
			# this will return nothing
		end
	end

	def current_user
		decoded_hash = decode_token(token)
		if !decoded_hash.empty?
			user_id = decoded_hash[0]["user_id"]
			user = User.find(user_id)
		else
			#no current user
		end
	end

	def logged_in?
		!!current_user
	end


end
