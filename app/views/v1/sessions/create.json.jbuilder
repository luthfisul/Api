json.data do
	json.message "Login success"
	json.user do
		json.call(
			@user,
			:id,
			:username,
			:email,
			:authentication_token
		)
	end
end