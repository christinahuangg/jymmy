//
//  Exercise.swift
//  jymmy
//
//  Created by Xinyi Chen on 8/12/25.
//


import Foundation

struct Exercise: Identifiable {
    let id = UUID()
    var name: String
    var level: String
    var instructions: String
}

struct ExerciseCategory: Identifiable {
    let id = UUID()
    var name: String
    var exercises: [Exercise]
}

let noEquipmentCategories: [ExerciseCategory] = [
    ExerciseCategory(
        name: "Quads",
        exercises: [
            Exercise(name: "Wall Sit", level: "Beginner", instructions: "Sit against a wall with knees at 90°, hold position."),
            Exercise(name: "Bodyweight Squats", level: "Beginner", instructions: "Stand tall, bend knees and hips, then return."),
            Exercise(name: "Split Squats", level: "Intermediate", instructions: "One foot forward, lower back knee, stand back up."),
            Exercise(name: "Jump Squats", level: "Intermediate/Advanced", instructions: "Squat, then explode upward into a jump."),
            Exercise(name: "Pistol Squats", level: "Advanced", instructions: "Squat on one leg while keeping the other extended.")
        ]
    ),
    ExerciseCategory(
        name: "Chest",
        exercises: [
            Exercise(name: "Push-ups (Knees)", level: "Beginner", instructions: "From knees, lower chest to floor and push back."),
            Exercise(name: "Standard Push-ups", level: "Intermediate", instructions: "From plank, lower chest and push back up."),
            Exercise(name: "Wide Push-ups", level: "Intermediate", instructions: "Hands wider than shoulders, lower and press."),
            Exercise(name: "Decline Push-ups", level: "Advanced", instructions: "Feet elevated, lower chest and push up."),
            Exercise(name: "Archer Push-ups", level: "Advanced", instructions: "Shift weight to one arm while the other extends.")
        ]
    ),
    ExerciseCategory(
        name: "Calves / Hamstrings",
        exercises: [
            Exercise(name: "Standing Calf Raises", level: "Beginner", instructions: "Lift heels until on toes, lower slowly."),
            Exercise(name: "Single-Leg Calf Raises", level: "Intermediate", instructions: "Raise and lower on one leg."),
            Exercise(name: "Glute Bridge (Hamstrings)", level: "Beginner", instructions: "Lift hips, squeeze hamstrings."),
            Exercise(name: "Hamstring Walkouts", level: "Intermediate", instructions: "Bridge hips and slowly walk feet outward."),
            Exercise(name: "Nordic Curl (Assisted)", level: "Advanced", instructions: "Lower chest forward while resisting fall.")
        ]
    ),
    ExerciseCategory(
        name: "Glutes",
        exercises: [
            Exercise(name: "Glute Bridge", level: "Beginner", instructions: "Lift hips, squeeze glutes, lower slowly."),
            Exercise(name: "Donkey Kicks", level: "Beginner", instructions: "Kick one leg upward from hands/knees position."),
            Exercise(name: "Fire Hydrants", level: "Intermediate", instructions: "Lift bent leg out to the side from hands/knees."),
            Exercise(name: "Step-Back Lunges", level: "Intermediate", instructions: "Step back into lunge, then return."),
            Exercise(name: "Single-Leg Glute Bridge", level: "Advanced", instructions: "Bridge with one leg lifted.")
        ]
    ),
    ExerciseCategory(
        name: "Biceps",
        exercises: [
            Exercise(name: "Isometric Bicep Hold", level: "Beginner", instructions: "Hold arm bent at 90° and tense."),
            Exercise(name: "Inchworm with Arm Drag", level: "Beginner", instructions: "Walk hands out and drag arms inward."),
            Exercise(name: "Towel Curls", level: "Intermediate", instructions: "Pull against towel under foot or door."),
            Exercise(name: "Reverse Bear Crawls", level: "Intermediate", instructions: "Crawl backward using hands and feet."),
            Exercise(name: "Body Drag Curls", level: "Advanced", instructions: "Drag torso forward with arms on towel.")
        ]
    ),
    ExerciseCategory(
        name: "Triceps",
        exercises: [
            Exercise(name: "Wall Push-ups", level: "Beginner", instructions: "Push away from wall keeping elbows close."),
            Exercise(name: "Close-Grip Push-ups", level: "Intermediate", instructions: "Hands under shoulders, lower and press."),
            Exercise(name: "Triceps Dips", level: "Intermediate", instructions: "Lower from bench/chair, push back up."),
            Exercise(name: "Diamond Push-ups", level: "Advanced", instructions: "Hands form diamond, elbows close in."),
            Exercise(name: "Pseudo Planche Push-ups", level: "Advanced", instructions: "Lean forward, lower and press up.")
        ]
    ),
    ExerciseCategory(
        name: "Back (Lat Focused)",
        exercises: [
            Exercise(name: "Reverse Snow Angels", level: "Beginner", instructions: "On stomach, sweep arms from hips to head."),
            Exercise(name: "Superman Hold", level: "Beginner", instructions: "Lift arms and legs off floor, hold."),
            Exercise(name: "WORM", level: "Intermediate", instructions: "Wave body from hands to feet on floor."),
            Exercise(name: "Inchworm with Reach", level: "Intermediate", instructions: "Walk hands out, reach forward."),
            Exercise(name: "Back Extensions", level: "Intermediate", instructions: "Lift chest off floor while hips stay down.")
        ]
    ),
    ExerciseCategory(
        name: "Abs / Core",
        exercises: [
            Exercise(name: "Plank", level: "", instructions: "Hold forearm plank position."),
            Exercise(name: "Crunches", level: "", instructions: "Curl shoulders off floor, lower slowly."),
            Exercise(name: "Dead Bug", level: "", instructions: "Lower opposite arm and leg, return."),
            Exercise(name: "Mountain Climbers", level: "", instructions: "Run knees toward chest in plank."),
            Exercise(name: "Leg Lowers", level: "", instructions: "Lower straight legs to floor slowly."),
            Exercise(name: "Russian Twists", level: "", instructions: "Twist torso side-to-side while seated."),
            Exercise(name: "Toe Taps", level: "", instructions: "Tap toes to floor from tabletop position."),
            Exercise(name: "Scissor Kicks", level: "", instructions: "Alternate legs up and down off floor.")
        ]
    )
]



