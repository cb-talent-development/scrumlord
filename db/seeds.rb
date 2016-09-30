team = Team.create({
  email: "jeff.bostick@careerbuilder.com",
  password: "welcome1",
  recipient_email: "employersitecontentproducts@cb.com"
})

pos = Group.create({
  name: "Product Owners",
  team: team
})

devs = Group.create({
  name: "Developers",
  team: team
})

TeamMember.create({
  first_name: "Alex",
  last_name: "Tharp",
  email: "alex.tharp@careerbuilder.com",
  group: devs
})

TeamMember.create({
  first_name: "Arelia",
  last_name: "Jones",
  email: "arelia.jones@careerbuilder.com",
  group: devs
})

TeamMember.create({
  first_name: "Elliott",
  last_name: "Young",
  email: "elliott.young@careerbuilder.com",
  group: devs
})

TeamMember.create({
  first_name: "Justin",
  last_name: "Thompson",
  email: "justin.thompson@careerbuilder.com",
  group: pos
})

TeamMember.create({
  first_name: "Stephanie",
  last_name: "Gaspary",
  email: "stephanie.gaspary@careerbuilder.com",
  group: pos
})

TeamMember.create({
  first_name: "Kristy",
  last_name: "Cullinane",
  email: "kristy.cullinane@careerbuilder.com",
  group: pos
})
