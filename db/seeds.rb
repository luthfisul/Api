# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
5.times do
	Todo.create({
		title: Faker::Superhero.name,
		created_by: 'Sul'
	})
end