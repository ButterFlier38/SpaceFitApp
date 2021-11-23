//
//  ContentView.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 17/11/21.
//

import SwiftUI

struct ContentView: View {
//    init() {
//       UITabBar.appearance().backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
//        UINavigationBar.appearance().backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
//    }
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    @State var tabSelection: Tabs = .tab1
    
    var body: some View {
        NavigationView{
            TabView(selection: $tabSelection){
                AerobicPage()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Aerobic") }
                .tag(Tabs.tab1)
                PowerPage()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Power") }
                .tag(Tabs.tab2)
                CorePage()
                .tabItem {
                    Image(systemName: "square.grid.3x3.middle.filled")
                    Text("Core") }
                .tag(Tabs.tab3)

               
            }
            .navigationBarTitle(returnNaviBarTitle(tabSelection: self.tabSelection))
            .fullScreenCover(isPresented: $shouldShowOnboarding, content: {TutorialView(shouldShowOnboarding: $shouldShowOnboarding)})
        }
    }
    
    enum Tabs{
        case tab1, tab2, tab3
    }
    
    func returnNaviBarTitle(tabSelection: Tabs) -> String{
        switch tabSelection{
            case .tab1: return "Aerobic"
            case .tab2: return "Power"
            case .tab3: return "Core"
        }
    }
    
    }


let PageColor : Color = Color.white

struct AerobicPage: View {
    @StateObject var exerciseTypes = AerobicTypes()
    @State var progressValue: Float = 0.0
//    @Binding var exercise.done
    let layout = [
        GridItem(.flexible(minimum: 175)),
        GridItem(.flexible(minimum: 175))
    ]
    
    var body: some View {
        VStack {
            MyProgressBar(progressValue: $progressValue)
                .frame(width: 150.0, height: 150.0)
                .padding(30.0)
            
            LazyVGrid(columns: layout,content: {
                ForEach(exerciseTypes.Exercises) { exercise in
                    NavigationLink(destination: DescriptionView(exercise: exercise)) {
                        ZStack{
                        VStack{
                        Image(exercise.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(.all)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                            Text("\(exercise.name)")
                        }
                        if exercise.done{
                            Image(systemName: "checkmark.circle.fill").scaleEffect(3).foregroundColor(.pink)
                                .position(x: 40, y: 30)
                        }}
                    }.onAppear {
                        print("--")
                        progressValue = exerciseTypes.Exercises.map {
                            print($0.done)
                            if $0.done {
                                return 1.0 / Float(exerciseTypes.Exercises.count)   // Compute weight of each exercise
                            } else {
                                return 0.0
                            }
                        }.reduce(0.0, +)
                    }
                }
            })
        }
    }
}

struct PowerPage: View {
    @StateObject var exerciseTypes = PowerTypes()
    @State private var progressValue: Float = 0.0
    
    let layout = [
        GridItem(.flexible(minimum: 175)),
        GridItem(.flexible(minimum: 175))
    ]
    
    var body: some View {
        VStack {
            MyProgressBar(progressValue: $progressValue)
                .frame(width: 150.0, height: 150.0)
                .padding(30.0)
            
            LazyVGrid(columns: layout,content: {
                ForEach(exerciseTypes.Exercises) { exercise in
                    NavigationLink(destination: DescriptionView(exercise: exercise)) {
                        ZStack{
                        VStack{
                        Image(exercise.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(.all)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                            Text("\(exercise.name)")
                        }
                        if exercise.done{
                            Image(systemName: "checkmark.circle.fill").scaleEffect(3).foregroundColor(.pink)
                                .position(x: 40, y: 30)
                        }}
                    }.onAppear {
                        print("--")
                        progressValue = exerciseTypes.Exercises.map {
                            print($0.done)
                            if $0.done {
                                return 1.0 / Float(exerciseTypes.Exercises.count)   // Compute weight of each exercise
                            } else {
                                return 0.0
                            }
                        }.reduce(0.0, +)
                    }
                }
            })
        }
    }
}

struct CorePage: View {
    @StateObject var exerciseTypes = CoreTypes()
    @State private var progressValue: Float = 0.0
    
    let layout = [
        GridItem(.flexible(minimum: 175)),
        GridItem(.flexible(minimum: 175))
    ]
    var body: some View {
        VStack {
            MyProgressBar(progressValue: $progressValue)
                .frame(width: 150.0, height: 150.0)
                .padding(30.0)
            
            LazyVGrid(columns: layout,content: {
                ForEach(exerciseTypes.Exercises){exercise in
                    NavigationLink(destination: DescriptionView(exercise: exercise)) {
                        ZStack{
                        VStack{
                        Image(exercise.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(.all)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                        Text("\(exercise.name)")
                    }
                    if exercise.done{
                        Image(systemName: "checkmark.circle.fill").scaleEffect(3).foregroundColor(.pink)
                            .position(x: 40, y: 30)
                    }}
                    }.onAppear {
                    print("--")
                    progressValue = exerciseTypes.Exercises.map {
                        print($0.done)
                        if $0.done {
                            return 1.0 / Float(exerciseTypes.Exercises.count)   // Compute weight of each exercise
                        } else {
                            return 0.0
                        }
                    }.reduce(0.0, +)
                }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
