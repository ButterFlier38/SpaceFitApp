//
//  ExerciseInfo.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 19/11/21.
//

import Foundation

struct ExerciseInfo : Identifiable {
    let id = UUID()
    var name: String
    var imageName: String
    var description: String
    var time: Int
    var timeMin: Int
    var done: Bool = false
}
