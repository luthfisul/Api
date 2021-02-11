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
	json.statusCode 200
	json.message " Success Register!"
end