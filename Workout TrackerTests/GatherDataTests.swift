//
//  GatherDataTests.swift
//  Workout TrackerTests
//
//  Created by Vanessa Flores on 7/15/18.
//  Copyright © 2018 Vanessa Flores. All rights reserved.
//

import XCTest
@testable import Workout_Tracker

class GatherDataTests: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExercisesByMusclesNotEmpty() {
        let exerciseDatabase = ExerciseDatabase()
    
        let exerciseDictionary = exerciseDatabase.getExercisesByMuscles()
        
        XCTAssertFalse(exerciseDictionary.isEmpty)
        
    }
    
    
}










