//
//  QuickAddViewTests.swift
//  Workout TrackerTests
//
//  Created by Vanessa Flores on 7/21/18.
//  Copyright © 2018 Vanessa Flores. All rights reserved.
//

import XCTest
@testable import Workout_Tracker

class QuickAddViewTests: XCTestCase {
    
    var quickAddViewController : QuickAddViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        quickAddViewController = QuickAddViewController()
        quickAddViewController.loadViewIfNeeded()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetWorkoutTypes() {

        let workoutTypesArray = quickAddViewController.getWorkoutTypes()

        let expectedArray = ["Weight Training", "Sports & Recreation", "Body Weight", "Cardio"]

        print("Workout Array: \(workoutTypesArray)")

        print("Expected Array: \(expectedArray)")

        XCTAssertEqual(workoutTypesArray, expectedArray)
        
    }
    
    func testGetMusclesOrOptions() {

        let musclesArray = quickAddViewController.getMusclesOrOptions(for: "Weight Training")

        let expectedArray = ["Calves", "Arms", "Shoulders", "Glutes & Legs", "Abs", "Chest", "Back"]

        print("Muscles Array: \(musclesArray)")

        print("Expected Array: \(expectedArray)")

        XCTAssertEqual(musclesArray, expectedArray)
    }
    
    func testGetExercisesArray() {
        
        let exerciesArray = quickAddViewController.getExercisesArray(for: "Body Weight", for: "Arms")
        
        let expectedArray = ["TRX Bicep Curl", "Dips", "Parallel Bar Dip", "TRX Tricep Extension"]
        
        print("Exercises Array: \(exerciesArray)")
        
        print("Expected Array: \(expectedArray)")
        
        XCTAssertEqual(exerciesArray, expectedArray)
    }
    
    func testGetSelectedExercise() {
        
        let selectedExercise = quickAddViewController.getSelectedExercise(in: "Cardio", for: "Indoor", at: 3)
        
        let expectedResult = "Rower"
        
        XCTAssertEqual(selectedExercise, expectedResult)
    }
    
}









