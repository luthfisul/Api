json.data do
	json.call(
		@user,
		:id,
		:username,
		:name,
		:phone,
		:email,
		:imgUrl,
		:authentication_token
	)
end
json.meta do
	json.message "Success Login!"
	json.statusCode 200
end