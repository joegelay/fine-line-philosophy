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

joe = User.create username: "jgel911", email: "joegelay@gmail.com", password: "joeee123"
socrates = User.create username: "socrates1", email: "socrates1@gmail.com", password: "socratesss123"
kant = User.create username: "kantthinks", email: "kantthinks@gmail.com", password: "kanttt123"
nietzsche = User.create username: "nietzsche99", email: "nietzsche@gmail.com", password: "nietzscheee123"
seneca = User.create username: "seneca85", email: "seneca85@gmail.com", password: "senecaaa123"

passion = Idea.create name: "Passion"
obsession = Idea.create name: "Obsession"
success = Idea.create name: "Success"
achievement = Idea.create name: "Achievement"
contentment = Idea.create name: "Contentment"
complacency = Idea.create name: "Complacency"
wisdom = Idea.create name: "Wisdom"
intelligence = Idea.create name: "Intelligence"
confidence = Idea.create name: "Confidence"
arrogance = Idea.create name: "Arrogance"

passion_obsession = Pair.create idea_one: passion, idea_two: obsession
success_achievement = Pair.create idea_one: success, idea_two: achievement
contentment_complacency = Pair.create idea_one: contentment, idea_two: complacency
wisdom_intelligence = Pair.create idea_one: wisdom, idea_two: intelligence
confidence_arrogance = Pair.create idea_one: confidence, idea_two: arrogance

Entry.create content: "Your passion can be anything that simultaneously challenges you, intrigues you and motivates you. Contrary to the idea that doing what you love makes work effortless, a passion puts you to work. It's what you're willing to sacrifice lesser leisure and pleasures for.", idea: passion, user: seneca
Entry.create content: "An idea or thought that continually preoccupies or intrudes on a person's mind.", idea: obsession, user: seneca
Entry.create content: "Passion is a feeling of intense enthusiasm towards or compelling desire for someone or something. Passion can range from eager interest in or admiration for an idea, proposal, or cause; to enthusiastic enjoyment of an interest or activity; to strong attraction, excitement, or emotion towards a person.", idea: passion, user: nietzsche
Entry.create content: "Just like falling in love with a person can turn into an obsession, so can falling in love with what you do. Your passions can cross the line into obsessions, and instead of becoming a source of joy they turn into a source of misery.", idea: obsession, user: nietzsche

Entry.create content: "Success can be achieved when you try your best in all aspects of everything you do.", idea: success, user: socrates
Entry.create content: "Something that you did or got after planning and working to make it happen, and that therefore gives you a feeling of satisfaction, or the act of working to make this happen.", idea: achievement, user: socrates
Entry.create content: "Success is understanding the difference between need and want.", idea: success, user: kant
Entry.create content: "The realization of one's goals", idea: achievement, user: kant

Entry.create content: "Contentment is an emotional state of satisfaction that can be seen as a mental state, maybe drawn from being at ease in one's situation, body and mind. Colloquially speaking, contentment could be a state of having accepted one's situation and is a milder and more tentative form of happiness.", idea: contentment, user: socrates
Entry.create content: "A feeling of smug or uncritical satisfaction with oneself or one's achievements.", idea: complacency, user: socrates
Entry.create content: "Contentment is the state of being happy and satisfied. On Thanksgiving when you think about all you are grateful for, hopefully you feel a sense of contentment. If not, have another piece of pie and then you'll feel contentment. Contentment isn't an excited kind of happy, it's more like a peaceful ease of mind.", idea: contentment, user: kant
Entry.create content: "Self-satisfaction especially when accompanied by unawareness of actual dangers or deficiencies. When it comes to safety, complacency can be dangerous.", idea: complacency, user: kant

Entry.create content: "The soundness of an action or decision with regard to the application of experience, knowledge, and good judgment.", idea: wisdom, user: nietzsche
Entry.create content: "The capacity for logic, understanding, self-awareness, learning, emotional knowledge, reasoning, planning, creativity, critical thinking, and problem-solving.", idea: intelligence, user: nietzsche
Entry.create content: "I associate wisdom with attributes such as unbiased judgment, compassion, experiential self-knowledge, self-transcendence and non-attachment, and virtues such as ethics and benevolence.", idea: wisdom, user: seneca
Entry.create content: "The ability to think, reason, and understand instead of doing things automatically or by instinct.", idea: intelligence, user: seneca

Entry.create content: "Confidence is a state of being certain either that a hypothesis or prediction is correct or that a chosen course of action is the best or most effective. Confidence comes from a latin word 'fidere' which means 'to trust'; therefore, having a self-confidence is having trust in one's self.", idea: confidence, user: nietzsche
Entry.create content: "A haughty or arrogant person can be defined as one who acts as if they are superior, more valuable or important than others and underestimates them. At the same time, however, the arrogant person longs to be admired and respected for their special qualities and great accomplishments.", idea: arrogance, user: nietzsche
Entry.create content: "The feeling or belief that one can rely on someone or something; firm trust.", idea: confidence, user: seneca
Entry.create content: "Offensive display of superiority or self-importance; overbearing pride.", idea: arrogance, user: seneca




