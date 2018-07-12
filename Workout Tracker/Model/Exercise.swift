//
//  Exercise.swift
//  Workout Tracker
//
//  Created by Vanessa Flores on 7/11/18.
//  Copyright © 2018 Vanessa Flores. All rights reserved.
//

import Foundation
import RealmSwift

class Exercise: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var reps: Int = 0
    @objc dynamic var weight: Float = 0.0
    @objc dynamic var duration: String = ""
    @objc dynamic var distance: Float = 0.0
    @objc dynamic var date: String = ""
    @objc dynamic var time: String = ""
    
}
