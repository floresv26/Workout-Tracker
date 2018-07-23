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
    
    func testGetBodyWeightMuscles() {
        
        let musclesArray = quickAddViewController.getBodyWeightMuscles()
        
        let expectedArray = ["Calves", "Arms", "Shoulders", "Glutes & Legs", "Abs", "Chest", "Back"]
        
        print("Muscles Array: \(musclesArray)")
        
        print("Expected Array: \(expectedArray)")
        
        XCTAssertEqual(musclesArray, expectedArray)
    }
    
    
    
    
//    func testGetWeightTrainingMuscles() {
//
//    }
//
//    func testGetWeightTrainingExercisesByMuscles() {
//
//    }
//
//    func testGetSportsOptions() {
//
//    }
//
//    func testGetSportsExercises() {
//
//    }
//
//    func testGetCardioOptions() {
//
//    }
//
//    func testGetCardioExercises() {
//
//    }
    
    
}









