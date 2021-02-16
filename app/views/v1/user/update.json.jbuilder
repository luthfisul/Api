json.data do
	json.call(
		@user,
		:id,
		:username,
		:email,
		:authentication_token
	)
end
json.meta do
	json.statusCode 200
	json.message "Data was successfully updated!"
end	