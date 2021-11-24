//
//  ExerciseTypes.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 19/11/21.
//

import Foundation
import SwiftUI

class AerobicTypes : ObservableObject {
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "RunningUphill", imageName: "RunUpHill", description:"1. Find an approximately 10 degree or higher inclined hill.                                                                2. Run uphill continuously for 12*100m.                                                          3. Take a rest of 45 seconds.", time: 495, timeMin: 15)
    var exercise2 = ExerciseInfo(name: "JumpingRopes", imageName: "JumpingRopes",  description:"1. Find a Jumping rope.                                             2. Jump continuously for 2 minutes at the same speed.                                                                            3. Rest for 1 minute.                                                    4. Repeat the process 5 times.", time: 240, timeMin: 14)
    var exercise3 = ExerciseInfo(name: "Cycling",  imageName: "Cycle", description:"1. Cycle at an average speed on a flat road with minimal turns.", time: 60, timeMin: 40)
    var exercise4 = ExerciseInfo(name: "Running",  imageName: "aerobic4", description:"1. Run 400m at the same speed.                                       2. Rest for 1 minute.                                                       3. Repeat 12 times.", time: 660, timeMin: 30)

    init() {
        self.Exercises = [ exercise1, exercise2, exercise3, exercise4 ]
    }
}

class PowerTypes : ObservableObject {
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "Squats", imageName: "Squats", description: " 1: Part your legs at shoulder height.\n 2: Go down until your knees are in 90  degrees.\n 3: Come back.\n 4: 4*10 times rest 1 minut.", time: 180, timeMin: 7)
    var exercise2 = ExerciseInfo(name: "Lunges", imageName: "Lunges",  description:"1: Bend the leg,your knees doesn't go over                 the feet.\n2: Come back.\n3: Change your leg.\n4: 3*12 times,rest 1 minute.", time: 120, timeMin: 5)
    var exercise3 = ExerciseInfo(name: "Squat Jumps",  imageName: "Squat jump", description:"1: Part your legs at shoulder height.\n2: Go down until your knees are in 90  degrees.\n3: Jump. \n4: 3*8 times,rest 1 minutes.", time: 120, timeMin: 5)
    var exercise4 = ExerciseInfo(name: "Sumo Squats",  imageName: "Sumo squat", description:"1: Bend the leg over the shoulder.\n2: Turn your feet in the outside.\n3: 4*10 times,rest 1 minute.", time: 180, timeMin: 7)

    init() {
        self.Exercises = [ exercise1, exercise2, exercise3, exercise4 ]
    }
}

class CoreTypes : ObservableObject {
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "Planks", imageName: "Planks", description: " 1: Line flat.\n 2: Put your elboes in 90 degrees.\n 3: Get on your toes.\n 4: 2*1 minute,rest 1 minute.", time: 60, timeMin: 3)
    var exercise2 = ExerciseInfo(name: "Superman", imageName: "Superman",  description:"1: Lying on your stomach,extend your hands in front of your head.\n2: Lift your arms,and legs up toward the ceiling.\n3: Feel as if you,re reaching far away.\n4:Hold for 3 seconds*10 times,repeat 2 times.", time: 60, timeMin: 2)
    var exercise3 = ExerciseInfo(name: "Crunches",  imageName: "Crunch", description:"1: 1: Line on your back.\n2: Keep your elbows open and lift your shoulders a few inchees.\n3: Stay a few second and slowly lower your shoulders without touching the ground.\n4: 2*15 times,rest 1 minute.", time: 60, timeMin: 3)
    var exercise4 = ExerciseInfo(name: "Leg Raise",  imageName: "LegRaise", description:"1: Line on your back.\n2: Bring the leg togheter until they form 90 degrees angle with the floor.\n3: Go down slowly.\n4: 3*10 times,rest 1 minute.", time: 120, timeMin: 5)

    init() {
        self.Exercises = [ exercise1, exercise2, exercise3, exercise4]
    }
}
