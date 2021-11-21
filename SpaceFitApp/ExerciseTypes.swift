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
    
    var exercise1 = ExerciseInfo(name: "RunningUphill", imageName: "RunUpHill", description: "1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 55, timeMin: 30)
    var exercise2 = ExerciseInfo(name: "JumpingRopes", imageName: "JumpingRopes",  description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150, timeMin: 30)
    var exercise3 = ExerciseInfo(name: "Cyclying",  imageName: "Cycle", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 10, timeMin: 30)
    var exercise4 = ExerciseInfo(name: "Running",  imageName: "aerobic4", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 80, timeMin: 30)
   
    
    
   init() { self.Exercises = [exercise1,exercise2,exercise3,exercise4] }
    
}

class PowerTypes : ObservableObject {
    
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "Squats", imageName: "Squats", description: "1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150, timeMin: 30)
    var exercise2 = ExerciseInfo(name: "Lunges", imageName: "Lunges",  description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150, timeMin: 30)
    var exercise3 = ExerciseInfo(name: "Squat Jumps",  imageName: "Squat jump", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150, timeMin: 30)
    var exercise4 = ExerciseInfo(name: "Sumo Squats",  imageName: "Sumo squat", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150, timeMin: 30)
   
    
    
   init() { self.Exercises = [exercise1,exercise2,exercise3,exercise4] }
    
}

class CoreTypes : ObservableObject {
    
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "Planks", imageName: "Planks", description: "1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150, timeMin: 30)
    var exercise2 = ExerciseInfo(name: "Superman", imageName: "Superman",  description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 10, timeMin: 30)
    var exercise3 = ExerciseInfo(name: "Crunches",  imageName: "Crunch", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150, timeMin: 30)
    var exercise4 = ExerciseInfo(name: "Leg Raise",  imageName: "LegRaise", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 170, timeMin: 30)
   
    
    
   init() { self.Exercises = [exercise1,exercise2,exercise3,exercise4] }
    
}
