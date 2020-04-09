# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entry.destroy_all
Pair.destroy_all
User.destroy_all 
Idea.destroy_all 

joe = User.create username: "jgel911", email: "joegelay@gmail.com", password: "password"
chris = User.create username: "chrischang77", email: "chrischang@gmail.com", password: "password"

passion = Idea.create name: "Passion"
obsession = Idea.create name: "Obsession"
success = Idea.create name: "Success"
achievement = Idea.create name: "Achievement"

entry1 = Entry.create content: "Passion test, joe", idea: passion, user: joe
entry2 = Entry.create content: "Obsession test, joe", idea: obsession, user: joe
entry3 = Entry.create content: "Passion test, chris", idea: passion, user: chris
entry4 = Entry.create content: "Obsession test, chris", idea: obsession, user: chris

passion_obsession = Pair.create idea_one: passion, idea_two: obsession
success_achievement = Pair.create idea_one: success, idea_two: achievement


