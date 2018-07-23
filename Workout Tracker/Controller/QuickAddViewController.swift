//
//  QuickAddViewController.swift
//  Workout Tracker
//
//  Created by Vanessa Flores on 7/18/18.
//  Copyright © 2018 Vanessa Flores. All rights reserved.
//

import UIKit

class QuickAddViewController: UIViewController {
    
    enum MuscleGroup: String {
        case abs = "Abs"
        case arms = "Arms"
        case back = "Back"
        case calves = "Calves"
        case chest = "Chest"
        case legs = "Glutes & Legs"
        case shoulders = "Shoulders"
    }

    enum WorkoutType: String {
        case bodyWeight = "Body Weight"
        case weightTraining = "Weight Training"
        case sportsAndRecreation = "Sports & Recreation"
        case cardio = "Cardio"
    }
    
    let exercisesData = ExerciseDatabase()
    
    var workoutTypesDictionary = Dictionary<String,Dictionary<String,Array<String>>>()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        workoutTypesDictionary = self.exercisesData.exercisesByWorkoutType
        
    }
    
    func getWorkoutTypes() -> [String] {
        var workoutTypesArray : [String] = []
        for workoutType in workoutTypesDictionary.keys {
            workoutTypesArray.append(workoutType)
        }
        
        return workoutTypesArray
    }
    
    func getMusclesOrOptions(for workoutType: String) -> [String] {
        var musclesOrOptionsArray : [String] = []
        
        let musclesOrOptions = workoutTypesDictionary[workoutType]!.keys
        
        for muscleOrOption in musclesOrOptions {
            musclesOrOptionsArray.append(muscleOrOption)
        }
        
        return musclesOrOptionsArray
    }
    
    func getExercisesArray(for workoutType: String, for muscleOrOption: String) -> [String] {
        var exercisesArray : [String] = []
        
        exercisesArray = workoutTypesDictionary[workoutType]![muscleOrOption]!
        
        return exercisesArray
    }
    
    func getSelectedExercise(in workoutType: String, for muscleOrOption: String, at index: Int) -> String {
        var selectedExercise : String = ""
        
        selectedExercise = workoutTypesDictionary[workoutType]![muscleOrOption]![index]
        
        return selectedExercise
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
