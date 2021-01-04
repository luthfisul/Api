json.data do
	json.status"Created"
	json.message"Data has been created"

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