json.data do
	json.call(
		@user,
		:id,
	)
end
json.meta do
	json.message "Data was successfully deleted!"
	json.statusCode 200
end