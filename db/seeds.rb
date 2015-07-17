# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Workout.destroy_all
Exercise.destroy_all
     Log.destroy_all
    User.destroy_all

total_body = Workout.create({name: 'Total Body'})
upper_body = Workout.create({name: 'Upper Body'})
lower_body = Workout.create({name: 'Lower Body'})
core = Workout.create({name: 'Core'})



# Workout.create([
#   {name: 'Total Body'},
#   {name: 'Upper Body'},
#   {name: 'Lower Body'},
#   {name: 'Core'}
#   ])

Exercise.create([
  {name: 'Single-Leg Hip Thrust', workout_id: total_body.id, method: 'Place your upper back against a stable box or bench with your arms out to your sides. Lift your right foot, tucking your knee to your chest. Raise your hips as high as you can. (If doing reps, do 10 per leg.)', image_url: 'hipthrust.gif'},
  {name: 'Squat Jack', workout_id: total_body.id, method: 'Squat with your feet together and your hands touching the sides of your ankles. Now explode up to a standing position, raising your arms above your head and jumping your feet out to your sides.', image_url: 'squatjack.gif'},
  {name: 'Mountain Climber', workout_id: total_body.id, method: 'Assume a pushup position. Lift your right foot and bring your right knee as close to your chest as possible, touching the floor with the toes of your right foot. Repeat with your left leg. That’s 1 rep.', image_url: 'mountainclimber.gif'}, 
   {name: 'Handstand Pushups', workout_id: upper_body.id, method: 'Place your upper back against a stable box or bench with your arms out to your sides. Lift your right foot, tucking your knee to your chest. Raise your hips as high as you can. (If doing reps, do 10 per leg.)', image_url: 'hipthrust.gif'},
  {name: 'Tricep Dips', workout_id: upper_body.id, method: 'Squat with your feet together and your hands touching the sides of your ankles. Now explode up to a standing position, raising your arms above your head and jumping your feet out to your sides.', image_url: 'squatjack.gif'},
  {name: 'Bear Crawls', workout_id: upper_body.id, method: 'Assume a pushup position. Lift your right foot and bring your right knee as close to your chest as possible, touching the floor with the toes of your right foot. Repeat with your left leg. That’s 1 rep.', image_url: 'mountainclimber.gif'}, 
   {name: 'Jump Squat', workout_id: lower_body.id, method: 'Place your upper back against a stable box or bench with your arms out to your sides. Lift your right foot, tucking your knee to your chest. Raise your hips as high as you can. (If doing reps, do 10 per leg.)', image_url: 'hipthrust.gif'},
  {name: 'Hamstring Stretch', workout_id: lower_body.id, method: 'Squat with your feet together and your hands touching the sides of your ankles. Now explode up to a standing position, raising your arms above your head and jumping your feet out to your sides.', image_url: 'squatjack.gif'},
  {name: 'King Squats', workout_id: lower_body.id, method: 'Assume a pushup position. Lift your right foot and bring your right knee as close to your chest as possible, touching the floor with the toes of your right foot. Repeat with your left leg. That’s 1 rep.', image_url: 'mountainclimber.gif'}, 
   {name: 'Crunch', workout_id: core.id, method: 'Place your upper back against a stable box or bench with your arms out to your sides. Lift your right foot, tucking your knee to your chest. Raise your hips as high as you can. (If doing reps, do 10 per leg.)', image_url: 'hipthrust.gif'},
  {name: 'V-Ups', workout_id: core.id, method: 'Squat with your feet together and your hands touching the sides of your ankles. Now explode up to a standing position, raising your arms above your head and jumping your feet out to your sides.', image_url: 'squatjack.gif'},
  {name: 'Plank', workout_id: core.id, method: 'Assume a pushup position. Lift your right foot and bring your right knee as close to your chest as possible, touching the floor with the toes of your right foot. Repeat with your left leg. That’s 1 rep.', image_url: 'mountainclimber.gif'} 
   ])

User.create([
	 {name: "Mark", email: "mark@fake.com", password: "password"},
	 {name: "Joe", email: "joe1@fake.com", password: "password"}
	 ])

Log.create([
		{exercise_id: 1, user_id: 1, reps: 25, created_at: Date.parse('2015/07/27') },
		{exercise_id: 2, user_id: 1, reps: 40, created_at: Date.parse('2015/07/27') },
		{exercise_id: 3, user_id: 1, reps: 55, created_at: Date.parse('2015/07/27') }
		])
