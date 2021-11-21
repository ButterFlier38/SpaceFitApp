//
//  ContentView.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 17/11/21.
//
import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        UINavigationBar.appearance().backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        }
var body: some View {
    NavigationView{
        TabView {
            AerobicPage()
                .tabItem{
                        Image(systemName: "heart.fill")
                        Text("Aerobic")
                }
            PowerPage()
                .tabItem{
                        Image(systemName: "flame.fill")
                        Text("Power").navigationBarTitle("Power")
                    
                }
            CorePage()
                .tabItem{
                        Image(systemName: "square.grid.3x3.middle.filled")
                        Text("Core")
                }
        
    }
    }
}
}
let PageColor : Color = Color(red: 255/255, green: 255/255, blue: 255/255)

struct AerobicPage: View {
    @StateObject var exerciseTypes = AerobicTypes()
    @State private var progressValue: Float = 0.3
    let layout = [
        GridItem(.flexible(minimum: 175)),
        GridItem(.flexible(minimum: 175))
    ]
    var body: some View {
        
            
             VStack{
               
                    MyProgressBar(progressValue: $progressValue)
                        .frame(width: 150.0, height: 150.0)
                        .padding(30.0)
                
             LazyVGrid(columns: layout,content: {
              ForEach(exerciseTypes.Exercises){exercise in
                               NavigationLink(destination: DescriptionView(exercise: exercise)) {
                             Image(exercise.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                    .padding(.all)
                                    .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.gray, lineWidth: 2)
                                        )
                                 }
                              .navigationBarTitle("Aerobic").navigationBarTitleDisplayMode(.large)
                        }})
             }
}}
    
struct PowerPage: View {
    @StateObject var exerciseTypes = PowerTypes()
    @State private var progressValue: Float = 0.1
    let layout = [
        GridItem(.flexible(minimum: 175)),
        GridItem(.flexible(minimum: 175))
    ]
    var body: some View {
       
        VStack{
                            MyProgressBar(progressValue: $progressValue)
                                .frame(width: 150.0, height: 150.0)
                                .padding(30.0)
                        
                     LazyVGrid(columns: layout,content: {
                      ForEach(exerciseTypes.Exercises){exercise in
                                       NavigationLink(destination: DescriptionView(exercise: exercise)) {
                                     Image(exercise.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .padding(.all)
                                            .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .stroke(Color.gray, lineWidth: 2)
                                                )
                                         }
                                }})
            
         }.navigationBarTitle("Power")
    }}

struct CorePage: View {
    @StateObject var exerciseTypes = CoreTypes()
    @State private var progressValue: Float = 0.5
    let layout = [
        GridItem(.flexible(minimum: 175)),
        GridItem(.flexible(minimum: 175))
    ]
    var body: some View {
    
        VStack{
                    MyProgressBar(progressValue: $progressValue)
                                .frame(width: 150.0, height: 150.0)
                                .padding(30.0)
                        
                     LazyVGrid(columns: layout,content: {
                      ForEach(exerciseTypes.Exercises){exercise in
                                       NavigationLink(destination: DescriptionView(exercise: exercise)) {
                                     Image(exercise.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .padding(.all)
                                            .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .stroke(Color.gray, lineWidth: 2)
                                                )
                                         }.navigationBarTitle("Core").navigationBarTitleDisplayMode(.large)
                                }})
         }
          
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
    }
}

