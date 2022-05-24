# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Interval.destroy_all
WorkoutExercise.destroy_all
Exercise.destroy_all
Workout.destroy_all
User.destroy_all

user_1 = User.create!(name: 'user_1', password: 'password1')
user_2 = User.create!(name: 'user_2', password: 'password2')
user_3 = User.create!(name: 'user_3', password: 'password3')
user_4 = User.create!(name: 'user_4', password: 'password4')
user_5 = User.create!(name: 'user_5', password: 'password5')

workout_1 = Workout.create!(name: 'killer chest day', user_id: "#{user_1.id}", status: 'completed' )
workout_2 = Workout.create!(name: 'killer back day', user_id: "#{user_1.id}", status: 'completed' )
workout_3 = Workout.create!(name: 'killer leg day', user_id: "#{user_1.id}", status: 'completed' )
workout_4 = Workout.create!(name: 'killer shoulder day', user_id: "#{user_1.id}", status: 'completed' )
workout_5 = Workout.create!(name: 'killer arm day', user_id: "#{user_1.id}", status: 'completed' )

exercise_1 = Exercise.create!(name: 'barbell bench press', gif: "http://d205bpvrqc9yn1.cloudfront.net/0025.gif", equipment: "barbell")
exercise_6 = Exercise.create!(name: 'barbell incline bench press', gif: "http://d205bpvrqc9yn1.cloudfront.net/0047.gif", equipment: "barbell")
exercise_7 = Exercise.create!(name: 'barbell decline bench press', gif: "http://d205bpvrqc9yn1.cloudfront.net/0033.gif", equipment: "barbell")
exercise_8 = Exercise.create!(name: 'deep push up', gif: "http://d205bpvrqc9yn1.cloudfront.net/1274.gif", equipment: "dumbbell")
exercise_9 = Exercise.create!(name: 'dumbbell fly', gif: "http://d205bpvrqc9yn1.cloudfront.net/0308.gif", equipment: "dumbbell")
# chest exercises ^^
exercise_2 = Exercise.create!(name: 'alternate lateral pulldown', gif: "http://d205bpvrqc9yn1.cloudfront.net/0007.gif", equipment: "cable")
exercise_10 = Exercise.create!(name: 'cable rope crossover seated row', gif: "http://d205bpvrqc9yn1.cloudfront.net/1320.gif", equipment: "cable")
exercise_11 = Exercise.create!(name: 'pull up (neutral grip)', gif: "http://d205bpvrqc9yn1.cloudfront.net/0651.gif", equipment: "body weight" )
exercise_12 = Exercise.create!(name: 'rope climb', gif: "http://d205bpvrqc9yn1.cloudfront.net/0680.gif", equipment: "rope")
exercise_13 = Exercise.create!(name: 'smith narrow row', gif: "http://d205bpvrqc9yn1.cloudfront.net/0761.gif", equipment: "smith machine")
# back exercises ^^
exercise_3 = Exercise.create!(name: 'smith sumo squat', gif: "http://d205bpvrqc9yn1.cloudfront.net/3142.gif", equipment: "smith machine")
exercise_14 = Exercise.create!(name: 'trap bar deadlift', gif: "http://d205bpvrqc9yn1.cloudfront.net/0811.gif", equipment: "trap bar")
exercise_15 = Exercise.create!(name: 'weighted lunge with swing', gif: "http://d205bpvrqc9yn1.cloudfront.net/3644.gif", equipment: "weighted")
exercise_16 = Exercise.create!(name: 'cable assisted inverse leg curl', gif: "http://d205bpvrqc9yn1.cloudfront.net/3235.gif", equipment: "cable")
exercise_17 = Exercise.create!(name: 'lever leg extension', gif: "http://d205bpvrqc9yn1.cloudfront.net/0585.gif", equipment: "leverage machine")
# leg day obvi lol
exercise_4 = Exercise.create!(name: 'lever one arm shoulder press', gif: "http://d205bpvrqc9yn1.cloudfront.net/0590.gif", equipment: "leverage machine")
exercise_18 = Exercise.create!(name: 'dumbbell arnold press', gif: "http://d205bpvrqc9yn1.cloudfront.net/2137.gif", equipment: "dumbbell")
exercise_19 = Exercise.create!(name: 'dumbbell full can lateral raise', gif: "http://d205bpvrqc9yn1.cloudfront.net/0311.gif", equipment: "dumbbell")
exercise_20 = Exercise.create!(name: 'dumbbell one arm reverse fly (with support)', gif: "http://d205bpvrqc9yn1.cloudfront.net/0359.gif", equipment: "dumbbell")
exercise_21 = Exercise.create!(name: 'dumbbell one arm upright row', gif: "http://d205bpvrqc9yn1.cloudfront.net/0363.gif", equipment: "dumbbell")
# shoulders ^^
exercise_5 = Exercise.create!(name: 'dumbbell seated bicep curl', gif: "http://d205bpvrqc9yn1.cloudfront.net/1677.gif", equipment: "dumbbell")
exercise_22 = Exercise.create!(name: 'cable rope incline tricep extension', gif: "http://d205bpvrqc9yn1.cloudfront.net/1725.gif", equipment: "cable")
exercise_23 = Exercise.create!(name: 'cable rope hammer preacher curl', gif: "http://d205bpvrqc9yn1.cloudfront.net/1639.gif", equipment: "cable")
exercise_24 = Exercise.create!(name: 'impossible dips', gif: "http://d205bpvrqc9yn1.cloudfront.net/3289.gif", equipment: "body weight")
exercise_25 = Exercise.create!(name: 'barbell lying triceps extension skull crusher', gif: "http://d205bpvrqc9yn1.cloudfront.net/0060.gif", equipment: "barbell")
# arms ^^

workout_exercise_1 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_1.id}")
workout_exercise_11 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_2.id}")
workout_exercise_12 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_6.id}")
workout_exercise_13 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_7.id}")
workout_exercise_14 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_8.id}")
workout_exercise_15 = WorkoutExercise.create!(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_9.id}")
# chest workoutex
workout_exercise_2 = WorkoutExercise.create!(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_2.id}")
workout_exercise_16 = WorkoutExercise.create!(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_10.id}")
workout_exercise_17 = WorkoutExercise.create!(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_11.id}")
workout_exercise_18 = WorkoutExercise.create!(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_12.id}")
workout_exercise_19 = WorkoutExercise.create!(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_13.id}")
# back workoutexercises ^^
workout_exercise_3 = WorkoutExercise.create!(workout_id: "#{workout_3.id}", exercise_id: "#{exercise_3.id}")
workout_exercise_20 = WorkoutExercise.create!(workout_id: "#{workout_3.id}", exercise_id: "#{exercise_14.id}")
workout_exercise_21 = WorkoutExercise.create!(workout_id: "#{workout_3.id}", exercise_id: "#{exercise_15.id}")
workout_exercise_22 = WorkoutExercise.create!(workout_id: "#{workout_3.id}", exercise_id: "#{exercise_16.id}")
workout_exercise_23 = WorkoutExercise.create!(workout_id: "#{workout_3.id}", exercise_id: "#{exercise_17.id}")
# leg workout exercises ^^
workout_exercise_4 = WorkoutExercise.create!(workout_id: "#{workout_4.id}", exercise_id: "#{exercise_4.id}")
workout_exercise_24 = WorkoutExercise.create!(workout_id: "#{workout_4.id}", exercise_id: "#{exercise_18.id}")
workout_exercise_25 = WorkoutExercise.create!(workout_id: "#{workout_4.id}", exercise_id: "#{exercise_19.id}")
workout_exercise_26 = WorkoutExercise.create!(workout_id: "#{workout_4.id}", exercise_id: "#{exercise_20.id}")
workout_exercise_27 = WorkoutExercise.create!(workout_id: "#{workout_4.id}", exercise_id: "#{exercise_21.id}")
# shoulders ^^
workout_exercise_5 = WorkoutExercise.create!(workout_id: "#{workout_5.id}", exercise_id: "#{exercise_5.id}")
workout_exercise_28 = WorkoutExercise.create!(workout_id: "#{workout_5.id}", exercise_id: "#{exercise_22.id}")
workout_exercise_29 = WorkoutExercise.create!(workout_id: "#{workout_5.id}", exercise_id: "#{exercise_23.id}")
workout_exercise_30 = WorkoutExercise.create!(workout_id: "#{workout_5.id}", exercise_id: "#{exercise_24.id}")
workout_exercise_31 = WorkoutExercise.create!(workout_id: "#{workout_5.id}", exercise_id: "#{exercise_25.id}")
# arms ^^


5.times do |i|
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_1.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_11.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_12.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_13.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_14.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_15.id}")
end
# chest ^^
5.times do |i|
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_2.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_16.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_17.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_18.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_19.id}")
end
# back ^^
5.times do |i|
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_3.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_20.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_21.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_22.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_23.id}")
end
# legs ^^
5.times do |i|
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_4.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_24.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_25.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_26.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_27.id}")
end
# shoulders ^^
5.times do |i|
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_5.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_28.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_29.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_30.id}")
  Interval.create!(reps: 12, weight_lbs: (125 + ((1 + i) * 5)), workout_exercise_id: "#{workout_exercise_31.id}")
end
# arms ^^

# set_13 = Interval.create!(reps: 12, weight_lbs: 135.0, workout_exercise_id: "#{workout_exercise_11.id}")
# set_14 = Interval.create(reps: 12, weight_lbs: 145.0, workout_exercise_id: "#{workout_exercise_11.id}")
# set_15 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_11.id}")
# set_16 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_11.id}")

# set_4 = Interval.create(reps: 12, weight_lbs: 135.0, workout_exercise_id: "#{workout_exercise_2.id}")
# set_5 = Interval.create(reps: 12, weight_lbs: 145.0, workout_exercise_id: "#{workout_exercise_2.id}")
# set_6 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_2.id}")
