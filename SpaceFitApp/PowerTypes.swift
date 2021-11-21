//
//  PowerTypes.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 21/11/21.
//

import Foundation
import SwiftUI

class PowerTypes : ObservableObject {
    
    @Published var Exercises: [ExerciseInfo] = []
    
    var exercise1 = ExerciseInfo(name: "Squat", imageName: "Squat-1", description: "1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150)
    var exercise2 = ExerciseInfo(name: "Burpees", imageName: "Squat jump",  description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150)
    var exercise3 = ExerciseInfo(name: "Run",  imageName: "Lunges", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150)
    var exercise4 = ExerciseInfo(name: "Skipping",  imageName: "Sumo squat", description:"1: Stand with your feet shoulder-width apart.2: Squat down as A with your arms bent next your side.3: Drive back up through your heels into a jump, moving your arms down and back B.4: Repeat the process 20 times until the timer runs out.", time: 150)
   
    
    
   init() { self.Exercises = [exercise1,exercise2,exercise3,exercise4] }
    
}
