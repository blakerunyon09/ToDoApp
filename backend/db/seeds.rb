Card.destroy_all
User.destroy_all

user1 = User.create({username: "phil123", password: "Ruby123"})
user2 = User.create({username: "blake123", password: "Ruby123"})

Card.create([
  {
    name: "Marketing Plan",
    description: "Create a marketing plan for the team.",
    user: user1
  },
  {
    name: "Financial Reports",
    description: "Create a marketing plan for the team.",
    user: user1
  },
  {
    name: "Learn CSS",
    description: "Create a marketing plan for the team.",
    user: user1
  },
  {
    name: "Update Bookmarks",
    description: "Create a marketing plan for the team.",
    user: user1
  },
  {
    name: "Update HTML Printing",
    description: "Create a marketing plan for the team.",
    user: user2
  },
  {
    name: "Create New PDF",
    description: "Create a marketing plan for the team.",
    user: user2
  },
])