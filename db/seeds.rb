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

user_1 = User.create(name: 'user_1', password: 'password1')
user_2 = User.create(name: 'user_2', password: 'password2')
user_3 = User.create(name: 'user_3', password: 'password3')
user_4 = User.create(name: 'user_4', password: 'password4')
user_5 = User.create(name: 'user_5', password: 'password5')

workout_1 = Workout.create(name: 'killer chest day', user_id: "#{user_1.id}")
workout_2 = Workout.create(name: 'killer back day', user_id: "#{user_1.id}")
workout_3 = Workout.create(name: 'killer leg day', user_id: "#{user_1.id}")
workout_4 = Workout.create(name: 'killer shoulder day', user_id: "#{user_1.id}")
workout_5 = Workout.create(name: 'killer arm day', user_id: "#{user_1.id}")

workout_6 = Workout.create(name: 'awesome chest day', user_id: "#{user_2.id}")
workout_7 = Workout.create(name: 'awesome back day', user_id: "#{user_2.id}")
workout_8 = Workout.create(name: 'awesome leg day', user_id: "#{user_2.id}")
workout_9 = Workout.create(name: 'awesome shoulder day', user_id: "#{user_2.id}")
workout_10 = Workout.create(name: 'awesome arm day', user_id: "#{user_2.id}")

exercise_1 = Exercise.create(name: 'bench press', muscle_group: 1)
exercise_6 = Exercise.create(name: 'incline bench press', muscle_group: 1)
exercise_7 = Exercise.create(name: 'decline bench press', muscle_group: 1)
exercise_8 = Exercise.create(name: 'dumbbell bench press', muscle_group: 1)
exercise_9 = Exercise.create(name: 'pec flyes', muscle_group: 1)
# chest exercises ^^
exercise_2 = Exercise.create(name: 'Lat Pull downs', muscle_group: 2)
exercise_10 = Exercise.create(name: 'Cable Rows', muscle_group: 2)
exercise_11 = Exercise.create(name: 'Pull ups', muscle_group: 2)
exercise_12 = Exercise.create(name: 'T bar', muscle_group: 2)
exercise_13 = Exercise.create(name: 'High Low Rows', muscle_group: 2)
# back exercises ^^
exercise_3 = Exercise.create(name: 'Squats', muscle_group: 3)
exercise_3 = Exercise.create(name: 'Deadlifts', muscle_group: 3)
exercise_3 = Exercise.create(name: 'Hack Squats', muscle_group: 3)
exercise_3 = Exercise.create(name: 'Leg Curl', muscle_group: 3)
exercise_3 = Exercise.create(name: 'Leg extensions', muscle_group: 3)

exercise_4 = Exercise.create(name: 'Shoulder Press', muscle_group: 4)
exercise_5 = Exercise.create(name: 'Bicep Curl', muscle_group: 5)

workout_exercise_1 = WorkoutExercise.create(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_1.id}")
workout_exercise_11 = WorkoutExercise.create(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_2.id}")
workout_exercise_12 = WorkoutExercise.create(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_6.id}")
workout_exercise_13 = WorkoutExercise.create(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_7.id}")
workout_exercise_14 = WorkoutExercise.create(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_8.id}")
workout_exercise_15 = WorkoutExercise.create(workout_id: "#{workout_1.id}", exercise_id: "#{exercise_9.id}")
# chest workoutex
workout_exercise_2 = WorkoutExercise.create(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_2.id}")
workout_exercise_16 = WorkoutExercise.create(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_10.id}")
workout_exercise_17 = WorkoutExercise.create(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_11.id}")
workout_exercise_18 = WorkoutExercise.create(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_12.id}")
workout_exercise_19 = WorkoutExercise.create(workout_id: "#{workout_2.id}", exercise_id: "#{exercise_13.id}")
# back workoutexercises ^^
workout_exercise_3 = WorkoutExercise.create(workout_id: "#{workout_3.id}", exercise_id: "#{exercise_3.id}")
workout_exercise_4 = WorkoutExercise.create(workout_id: "#{workout_4.id}", exercise_id: "#{exercise_4.id}")
workout_exercise_5 = WorkoutExercise.create(workout_id: "#{workout_5.id}", exercise_id: "#{exercise_5.id}")

workout_exercise_6 = WorkoutExercise.create(workout_id: "#{workout_6.id}", exercise_id: "#{exercise_1.id}")
workout_exercise_7 = WorkoutExercise.create(workout_id: "#{workout_7.id}", exercise_id: "#{exercise_2.id}")
workout_exercise_8 = WorkoutExercise.create(workout_id: "#{workout_8.id}", exercise_id: "#{exercise_3.id}")
workout_exercise_9 = WorkoutExercise.create(workout_id: "#{workout_9.id}", exercise_id: "#{exercise_4.id}")
workout_exercise_10 = WorkoutExercise.create(workout_id: "#{workout_10.id}", exercise_id: "#{exercise_5.id}")

set_1 = Interval.create(reps: 12, weight_lbs: 135.0, workout_exercise_id: "#{workout_exercise_1.id}")
set_2 = Interval.create(reps: 12, weight_lbs: 145.0, workout_exercise_id: "#{workout_exercise_1.id}")
set_3 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_1.id}")

5.times do |i|
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_11.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_12.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_13.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_14.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_15.id}")
end

5.times do |i|
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_2.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_16.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_17.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_18.id}")
  Interval.create (reps: 12, weight_lbs: (125 + ((1 + i) * 5), workout_exercise_id: "#{workout_exercise_19.id}")
end
# set_13 = Interval.create(reps: 12, weight_lbs: 135.0, workout_exercise_id: "#{workout_exercise_11.id}")
# set_14 = Interval.create(reps: 12, weight_lbs: 145.0, workout_exercise_id: "#{workout_exercise_11.id}")
# set_15 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_11.id}")
# set_16 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_11.id}")

set_4 = Interval.create(reps: 12, weight_lbs: 135.0, workout_exercise_id: "#{workout_exercise_2.id}")
set_5 = Interval.create(reps: 12, weight_lbs: 145.0, workout_exercise_id: "#{workout_exercise_2.id}")
set_6 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_2.id}")

set_7 = Interval.create(reps: 12, weight_lbs: 135.0, workout_exercise_id: "#{workout_exercise_6.id}")
set_8 = Interval.create(reps: 12, weight_lbs: 145.0, workout_exercise_id: "#{workout_exercise_6.id}")
set_9 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_6.id}")

set_10 = Interval.create(reps: 12, weight_lbs: 135.0, workout_exercise_id: "#{workout_exercise_7.id}")
set_11 = Interval.create(reps: 12, weight_lbs: 145.0, workout_exercise_id: "#{workout_exercise_7.id}")
set_12 = Interval.create(reps: 12, weight_lbs: 125.0, workout_exercise_id: "#{workout_exercise_7.id}")
