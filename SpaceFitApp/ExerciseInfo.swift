//
//  ExerciseInfo.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 19/11/21.
//

import Foundation

class ExerciseInfo : Identifiable {
    let id = UUID()
    var name: String = ""
    var imageName: String = ""
    var description: String = ""
    var time: Int = 0
    var timeMin: Int = 0
    var done: Bool = false

    init(name: String, imageName: String, description: String, time: Int, timeMin: Int) {
        self.name = name;
        self.imageName = imageName;
        self.description = description;
        self.time = time;
        self.timeMin = timeMin;
        self.done = false;
    }
}
