//
//  UtilityFunctions.swift
//  SpaceFitApp
//
//  Created by Andrea Autiero on 21/11/21.
//

public func convertSecondsToTime(timeInSeconds: Int)-> String{
    let minutes = timeInSeconds / 60
    let seconds = timeInSeconds % 60
    return String(format:"%02i:%02i", minutes, seconds)
}
