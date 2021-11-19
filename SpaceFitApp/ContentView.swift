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
        TabView {
            AerobicPage()
                .tabItem{
                        Image(systemName: "heart.fill")
                        Text("Aerobic")
                }
            PowerPage()
                .tabItem{
                        Image(systemName: "flame.fill")
                        Text("Power")
                }
            CorePage()
                .tabItem{
                        Image(systemName: "square.grid.3x3.middle.filled")
                        Text("Core")
                }
        }
    }
}

let PageColor : Color = Color(red: 255/255, green: 255/255, blue: 255/255)

struct AerobicPage: View {
    
    @State private var progressValue: Float = 0.3
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
                    .opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
               
            
        HStack {
            VStack {
                Spacer()
                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                }
                .padding()
                
                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
//                    .border(Color.black, width: 2)
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                }
                .padding()
            }
            Spacer()
            VStack {
                Spacer()
                HStack{
                    
                    NavigationLink(destination: DescriptionView()){
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                    
                    }
                }
                .padding()

                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()

            }
        }.background(PageColor)
                .navigationBarTitle("Aerobic")
            
                VStack{
                    MyProgressBar(progressValue: $progressValue)
                        .frame(width: 150.0, height: 150.0)
                        .padding(30.0)
                    Spacer()
                    
                }
            }
     }
    }
}

struct PowerPage: View {
    @State private var progressValue: Float = 0.0
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
                    .opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
        HStack {
            VStack {
                Spacer()
                HStack{
                Image(uiImage: UIImage(named: "Earth.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()
                
                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()
            }
            Spacer()
            VStack {
                Spacer()
                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()

                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()

            }
        }.background(PageColor)
         .navigationBarTitle("Power")
                VStack{
                    MyProgressBar(progressValue: $progressValue)
                        .frame(width: 150.0, height: 150.0)
                        .padding(30.0)
                    Spacer()
                    
                }
            }
     }
    }
}

struct CorePage: View {
    @State private var progressValue: Float = 0.0
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
                    .opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
        HStack {
            VStack {
                Spacer()
                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()
                
                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()
            }
            Spacer()
            VStack {
                Spacer()
                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()

                HStack{
                Image(uiImage: UIImage(named: "CircleProgress.png")!)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 2)
                        )                }
                .padding()
                
            }
        }.background(PageColor)
         .navigationBarTitle("Core")
            
            VStack{
                MyProgressBar(progressValue: $progressValue)
                    .frame(width: 150.0, height: 150.0)
                    .padding(30.0)
                Spacer()
                
            }
            }
     }
    }
}
