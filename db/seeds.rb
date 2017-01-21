User.delete_all
TodoItem.delete_all
CompletedItem.delete_all

user = User.create(username: "Joe", email: "joe@joe.com")

10.times do
  TodoItem.create(user_id: user.id, description: Faker::Lorem.sentence, due_date: "2/27/2024")
end

