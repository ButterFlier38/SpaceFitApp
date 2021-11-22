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
    
    var exercise1 = ExerciseInfo(name: "RunningUphill", imageName: "RunUpHill", description:"1. Find an approximately 10 degree or higher inclined hill.                                                                2. Run uphill continuously for 12 mins covering about 100 meters                                                            3. Take a rest of 45 seconds", time: 5, timeMin: 12)
    var exercise2 = ExerciseInfo(name: "JumpingRopes", imageName: "JumpingRopes",  description:"1. Find a Jumping rope.                                             2. Jump continuously for 2 minutes at the same speed.                                                                            3. Rest for 1 minute                                                    4. Repeat the process with increasing the speed each round.", time: 5, timeMin: 15)
    var exercise3 = ExerciseInfo(name: "Cycling",  imageName: "Cycle", description:"1. Cycle at an average speed on a flat road with minimal turns.", time: 5, timeMin: 40)
    var exercise4 = ExerciseInfo(name: "Running",  imageName: "aerobic4", description:"1. Run 400m at the same speed                                        2. Rest for 1 minute                                                       3. Repeat 12 times", time: 5, timeMin: 12)

    init() {
        self.Exercises = [ exercise1, exercise2, exercise3, exercise4 ]
    }
}

class PowerTypes : ObservableObject {
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "Squats", imageName: "Squats", description: "1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)
    var exercise2 = ExerciseInfo(name: "Lunges", imageName: "Lunges",  description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)
    var exercise3 = ExerciseInfo(name: "Squat Jumps",  imageName: "Squat jump", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)
    var exercise4 = ExerciseInfo(name: "Sumo Squats",  imageName: "Sumo squat", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)

    init() {
        self.Exercises = [ exercise1, exercise2, exercise3, exercise4 ]
    }
}

class CoreTypes : ObservableObject {
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "Planks", imageName: "Planks", description: "1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)
    var exercise2 = ExerciseInfo(name: "Superman", imageName: "Superman",  description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)
    var exercise3 = ExerciseInfo(name: "Crunches",  imageName: "Crunch", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)
    var exercise4 = ExerciseInfo(name: "Leg Raise",  imageName: "LegRaise", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 5, timeMin: 30)

    init() {
        self.Exercises = [ exercise1, exercise2, exercise3, exercise4]
    }
}
