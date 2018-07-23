//
//  ExerciseDatabase.swift
//  Workout Tracker
//
//  Created by Vanessa Flores on 7/15/18.
//  Copyright © 2018 Vanessa Flores. All rights reserved.
//

import Foundation

class ExerciseDatabase {
    
//    enum MuscleGroup: String {
//        case abs = "Abs"
//        case arms = "Arms"
//        case back = "Back"
//        case calves = "Calves"
//        case chest = "Chest"
//        case legs = "Glutes & Legs"
//        case shoulders = "Shoulders"
//    }
//    
//    enum WorkoutType: String {
//        case bodyWeight = "Body Weight"
//        case weightTraining = "Weight Training"
//        case sportsAndRecreation = "Sports & Recreation"
//        case cardio = "Cardio"
//    }
    
    var exercisesByWorkoutType : Dictionary<String,Dictionary<String,Array<String>>> = [
        "Body Weight": ["Abs": ["Ab Rollout", "Bicycle Crunch", "Bird Dog", "Bosu Ball Crunch", "Crunches",
                                "Decline Crunch", "Decline Leg Raise", "Decline Reverse Crunch", "Exercise Ball Side Crunch",
                                "Exercise Ball Pull In", "Flutter Kicks", "Glute Ham Raise Situp", "Hanging Knee Raise",
                                "Hanging Leg Raise", "Jackknife Sit-Up", "Knee Raise", "L Sit", "Leg Pull-In", "Leg Raise",
                                "Medicine Ball Full Twist", "Oblique Crunch", "Plank", "Plank Twist", "Reverse Crunch",
                                "Russian Twist", "Scissor Crossover Kick", "Scissor Kick", "Side Bridge", "Sit Ups",
                                "Stability Ball Abdominal Twist", "TRX Fallout", "TRX Side Plank", "Toe Touchers",
                                "Toes to Bar", "Tuck Crunch", "Vertical Knee Raise"
                                ],
                        "Arms": ["TRX Bicep Curl", "Dips", "Parallel Bar Dip", "TRX Tricep Extension"],
                        "Back": ["Butterfly Pull Up", "Chin Up", "Inverted Row", "Medicine Ball Slam", "Mixed Grip Pull-Up", "Muscle Up",
                                "Pull Up", "Ring Row", "Rope Climb", "TRX Row", "V-Bar Pullup", "Wide Grip Pull Up", "Back Extensions",
                                "Superman", "Scapular Pull Up"
                                ],
                        "Calves":["Standing Calf Raises", "Single Leg Calf Raise"],
                        "Chest": ["Alternating Medicine Ball Push Up", "Bosu Ball Push Up", "Decline Push Up", "Exercise Ball Push Up",
                                    "Medicine Ball Chest Pass", "Medicine Ball Push Up", "Push Up", "Single Arm Push Up", "TRX Atomic Push Up",
                                    "TRX Chest Fly", "TRX Chest Press", "TRX Push Up"
                                ],
                        "Glutes & Legs": ["Elevated Hip Bridge", "Floor Bridge", "Glute Kickback", "Hip Thrust", "Knee Up", "Kneeling Squat",
                                            "Single Leg Glute Bridge", "Single Leg Hip Thrust", "Single Leg Kickback", "Stability Ball Hip Bridge",
                                            "Stair Stepper", "Step Up", "TRX Glute Bridge", "Clam", "Side Leg Raises", "Lateral Bounds", "Lateral Box Jump",
                                            "Box Jump", "Floor Glute-Ham Raise", "Floor Glute-Ham Raise", "Lying Hamstrings Curl", "TRX Hamstring Pull-In",
                                            "Tuck Jump", "Air Squats", "Bosu Ball Mountain Climbers", "Bosu Ball Squat", "Box Squat", "Bulgarian Split Squat",
                                            "Burpees", "Jump Squat", "Front Lunge", "Back Lunge", "Lunge Jump", "Mountain Climbers", "Pistol Squat",
                                            "Side Lunge", "Split Squats", "TRX Curtsy Lunge", "TRX Lateral Lunge", "TRX Lunge", "TRX Mountain Climbers",
                                            "TRX Single Leg Squat", "TRX Squat", "TRX Squat and Row"
                                        ],
                        "Shoulders": ["Back Flies", "Battle Ropes", "TRX T Deltoid Fly"]
                        ],
        "Weight Training": ["Abs": ["Ab Crunch Machine", "Bosu Ball Cable Crunch with Side Bends", "Cable Crunch", "Cable Russian Twists",
                                    "Cable Wood Chop", "Dumbell Side Bend", "Pallof Press", "Rope Crunch", "Sit Ups",
                                    "Smith Machine Hip Raise"
                                    ],
                            "Arms": ["Barbell Curl", "Biceps Curl To Shoulder Press", "Single Arm Preacher Curl", "Dumbbell Bicep Curl",
                                    "EZ-Bar Curl", "Hammer Curls", "Incline Dumbbell Curl", "Incline Hammer Curls", "Machine Bicep Curl",
                                    "Reverse Barbell Curl", "Seated Dumbbell Curl", "Farmer's Walk", "Palms-Down Barbell Wrist Curl",
                                    "Palms-Down Dumbbell Wrist Curl", "Palms-Up Barbell Wrist Curl", "Palms-Up Dumbbell Wrist Curl",
                                    "Assisted Dips", "Cable Rope Overhead Triceps Extension", "Cable Rope Tricep Extension",
                                    "Cable Tricep Extension", "Close-Grip Bench Press", "Dips", "Dumbbell Floor Press", "Dumbbell Kickbacks",
                                    "Dumbbell Tricep Extension", "Machine Tricep Dip", "Machine Triceps Extension", "Parallel Bar Dip",
                                    "Seated Triceps Press", "Single Arm Dumbbell Triceps Extension", "Smith Machine Close-Grip Bench Press",
                                    "Tricep Extension", "Tricep Kickbacks", "Tricep Overhead Extension with Rope", "Tricep Press", "Tricep Pushdown"
                                    ],
                            "Back": ["Assisted Chin Up", "Assisted Neutral Grip Pull Up", "Assisted Pull Up", "Barbell Row", "Bent Over Barbell Row",
                                    "Bent Over Row", "Cable Row", "Dumbell Row", "Hammerstrength High Row", "Hammerstrength Iso Row", "Lat Pulldown",
                                    "Machine Row", "Seated Cable Row", "Shotgun Row", "Single Arm Lat Pulldown", "Single Arm Row",
                                    "Smith Machine Bent Over Row", "Straight-Arm Pulldown", "T-Bar Row", "V-Bar Pulldown", "Wide Grip Lat Pulldown",
                                    "Back Extensions", "Rack Pulls", "Seated Back Extension", "Single Leg Romanian Deadlift",
                                    "Stiff-Legged Barbell Good Morning", "Barbell Shrug", "Cable Shrugs", "Dumbbell Shrug", "Dumbbell Upright Row",
                                    "Hammerstrength Shrug", "Kettlebell Sumo High Pull", "Machine Shoulder Shrug", "Smith Machine Behind the Back Shrug",
                                    "Smith Machine Shrug", "Smith Machine Upright Row"
                                    ],
                            "Calves":["Calf Press", "Seated Calf Raise", "Smith Machine Calf Raise", "Smith Machine Reverse Calf Raises",
                                        "Standing Barbell Calf Raise", "Standing Calf Raises", "Single Leg Calf Raise"
                                    ],
                            "Chest": ["Barbell Bench Press", "Barbell Decline Bench Press", "Barabell Incline Bench Press", "Cable Chest Press",
                                    "Cable Crossover Fly", "Dumbbell Bench Press", "Dumbbell Decline Bench Press", "Dumbbell Decline Fly",
                                    "Dumbbell Fly", "Dumbbell Incline Bench Press", "Dumbbell Incline Fly", "Dumbbell Pullover", "Floor Press",
                                    "Freemotion Chest Press", "Hammerstrength Chest Press", "Hammerstrength Decline Chest Press",
                                    "Hammerstrength Incline Chest Press", "Incline Cable Chest Press", "Machine Bench Press", "Machine Fly",
                                    "Single Arm Dumbbell Bench Press", "Single Arm Floor Press", "Smith Machine Bench Press",
                                    "Smith Machine Decline Press", "Smith Machine Incline Press"
                                    ],
                            "Glutes & Legs": ["Barbell Glute Bridge", "Barbell Hip Thrust", "Elevated Hip Bridge", "Floor Bridge", "Glute Kickback",
                                            "Hip Extension", "Hip Thrust", "Kneeling Squat", "Pull Through", "Single Leg Cable Kickback",
                                            "Single Leg Glute Bridge", "Single Leg Hip Thrust", "Single Leg Kickback", "Step Up", "Hip Abductor",
                                            "Hip Adductor", "Clean", "Clean Deadlift", "Dumbbell Clean", "Dumbbell Stiff Legged Deadlift",
                                            "Glute Ham Raise", "Good Morning", "Hang Power Snatch", "Hang Snatch", "Kettlebell Clean",
                                            "Kettlebell Hang Clean", "Kettlebell One-Legged Deadlift", "Kettlebell Swing", "Leg Curl",
                                            "Lying Hamstrings Curl", "Muscle Snatch", "Power Clean", "Power Clean from Blocks", "Power Snatch",
                                            "Prowler Sprint", "Romanian Deadlift", "Rowing", "Seated Leg Curl", "Single Leg Curl", "Sled Push",
                                            "Smith Machine Hang Power Clean", "Smith Machine Stiff-Legged Deadlift", "Snatch Deadlift",
                                            "Snatch High Pull", "Snatch Pull", "Snatch-Grip Deadlift", "Split Snatch", "Standing Leg Curl",
                                            "Stiff-Legged Deadlift", "Sumo Deadlift", "Sumo Deadlift High Pull", "Back Squat", "Barbell High Pull",
                                            "Barbell Lunge", "Barbell Step Ups", "Bulgarian Split Squat", "Clean High Pull", "Clean Pull",
                                            "Clean from Blocks", "Dumbbell Lunge", "Dumbbell Squat", "Dumbbell Step Ups", "Front Squat",
                                            "Front Squat to a Bench", "Goblet Squat", "Hack Squat", "Hang Clean", "Hang Power Clean",
                                            "Kettlebell Front Squat", "Kettlebell Pistol Squat", "Leg Extension", "Leg Press", "Lunge",
                                            "Machine Leg Press", "Machine Squat", "Olympic Squat", "Overhead Squat", "Power Snatch from Blocks",
                                            "Push Jerk", "Single Arm Overhead Dumbbell Squat", "Single Arm Overhead Kettlebell Squat",
                                            "Single-Leg Leg Extension", "Smith Machine Leg Press", "Smith Machine Pistol Squat",
                                            "Smith Machine Squat", "Smith Single-Leg Split Squat", "Snatch", "Snatch Balance", "Snatch from Blocks",
                                            "Split Clean", "Split Jerk", "Split Squats", "Sumo Dumbbell Squat", "Tire Flip", "Trap Bar Deadlift",
                                            "Wall Ball"
                                            ],
                            "Shoulders": ["Arnold Dumbell Press", "Back Flies", "Barbell Shoulder Press", "Cable Lateral Raise",
                                          "Cable Rear Delt Fly", "Cable Shoulder Press", "Clean and Jerk", "Dumbbell Front Raise",
                                          "Dumbbell Lateral Raise", "Dumbbell Rear Delt Raise", "Dumbbell Reverse Fly", "Dumbbell Shoulder Press",
                                          "Dumbbell Shoulder Raise", "Dumbbell Squat to Shoulder Press", "Face Pull", "Freemotion Shoulder Press",
                                          "Front Plate Raise", "Hammerstrength Shoulder Press", "Iron Cross", "Kettlebell Clean and Jerk",
                                          "Kettlebell Jerk", "Kettlebell Overhead Press", "Kettlebell Snatch", "Kettlebell Thruster",
                                          "Lateral Raise", "Machine Lateral Raise", "Machine Overhead Press", "Machine Shoulder Press",
                                          "Muscle Clean", "Push Press", "Rear Delt Fly", "Rear Delt Machine Fly", "Rear Delt Raise",
                                          "Seated Dumbbell Rear Delt Raise", "Shoulder Press", "Side Laterals to Front Raise",
                                          "Single Arm Kettlebell Shoulder Press", "Single Arm Ovearhead Press",
                                          "Smith Machine One-Arm Upright Row", "Smith Machine Overhead Shoulder Press", "Thruster", "Upright Row"
                                        ]
                            ],
        "Sports & Recreation": ["Indoor": ["Swimming", "Raquetball", "Basketball", "Cycling"],
                                "Outdoor": ["Tennins", "Swimming", "Basketball", "Hiking", "Cycling"]
                                ],
        "Cardio": ["Indoor": ["Elliptical", "Walking", "Running", "Rower", "Stair Stepper"],
                   "Outdoor": ["Running", "Walking"]
                    ],
    ]
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    // Dictionary containing all exercises for each muscle
//    var exercisesByMuscles = Dictionary<String, [String]>()
//
//
//    // Method to go through contents of WorkoutDataRows.txt and create exercisesByMuscles dictionary
//    func getExercisesByMuscles() -> Dictionary<String, [String]> {
//
//        // Get file path for WorkoutDataRows file
//        guard let filePath = Bundle.main.path(forResource: "WorkoutDataRows", ofType: ".txt")
//            else {
//                print("File Does Not Exist")
//                return exercisesByMuscles
//        }
//
//        // Retrieve contents of WorkoutDataFile and fill exercisesByMuscles dictionary
//        do {
//            let contents = try String(contentsOfFile: filePath)
//            let muscleExercises = contents.components(separatedBy: CharacterSet.newlines) as [String]
//            for row in muscleExercises {
//                var rowItems = row.components(separatedBy: "\t") as [String]
//                let key = rowItems[0]
//                exercisesByMuscles[rowItems.remove(at: 0)] = []
//                let cleanExerciseArray = rowItems.filter { ($0 != "") }
//                exercisesByMuscles[key] = cleanExerciseArray
//            }
//        } catch {
//            print("File Read Error for file \(filePath)")
//        }
//
//        return exercisesByMuscles
//    }
    
}


