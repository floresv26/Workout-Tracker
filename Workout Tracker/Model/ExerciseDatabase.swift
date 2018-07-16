//
//  ExerciseDatabase.swift
//  Workout Tracker
//
//  Created by Vanessa Flores on 7/15/18.
//  Copyright © 2018 Vanessa Flores. All rights reserved.
//

import Foundation

class ExerciseDatabase {
    
    enum MuscleGroup {
        case absCore
        case armsShouldersBack
        case glutesLegs
    }
    
    enum WorkoutType {
        case bodyWeight
        case weightTraining
        case sportsAndRecreation
        case cardio
    }
    
    // Dictionary containing all exercises for each muscle
    var exercisesByMuscles = Dictionary<String, [String]>()
    
    
    // Method to go through contents of WorkoutDataRows.txt and create exercisesByMuscles dictionary
    func getExercisesByMuscles() -> Dictionary<String, [String]> {
        
        // Get file path for WorkoutDataRows file
        guard let filePath = Bundle.main.path(forResource: "WorkoutDataRows", ofType: ".txt")
            else {
                print("File Does Not Exist")
                return exercisesByMuscles
        }
        
        // Retrieve contents of WorkoutDataFile and fill exercisesByMuscles dictionary
        do {
            let contents = try String(contentsOfFile: filePath)
            let muscleExercises = contents.components(separatedBy: CharacterSet.newlines) as [String]
            for row in muscleExercises {
                var rowItems = row.components(separatedBy: "\t") as [String]
                let key = rowItems[0]
                exercisesByMuscles[rowItems.remove(at: 0)] = []
                let cleanExerciseArray = rowItems.filter { ($0 != "") }
                exercisesByMuscles[key] = cleanExerciseArray
            }
        } catch {
            print("File Read Error for file \(filePath)")
        }

        return exercisesByMuscles
    }
    
}


