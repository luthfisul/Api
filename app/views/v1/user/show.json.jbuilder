json.data do
	json.status"Showed"
	json.message"User founded"
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