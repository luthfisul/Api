json.data do
	json.status"Updated"
	json.message"Data has been updated"

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