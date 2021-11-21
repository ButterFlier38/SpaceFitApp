//
//  ContentView.swift
//  mine
//
//  Created by Emanuele Bosco on 17/11/21.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct DescriptionView: View {
    @State var timeRemaining : Int = 0
    @State var isStarted : Bool = false
    @State var exercise: ExerciseInfo

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            VStack {
                Image(exercise.imageName)
                    .resizable().aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                    .frame(width: 200,height: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                
                HStack{
                    Image(systemName: "figure.walk").foregroundColor(.blue)
                        .font(.system(size: 25.0))
                    
                    Text("Description")
                        .font(.system(size: 30.0))
                }
                
                Text("\(exercise.description)")
                    .font(.system(size: 18.0))
                    .frame(width: 400, height: 125, alignment: .top)
                
                
                HStack{
                    Image(systemName: "timer").foregroundColor(.blue)
                        .font(.system(size: 25.0))
                    Text("Duration")
                        .font(.system(size: 25.0))
                }
                Text ("\(exercise.timeMin) min")
                    .font(.system(size: 15.0))
                Spacer()
                ZStack{
                    Spacer()
                    RoundedRectangle(cornerRadius: 35)
                        .fill(Color.blue)
                        .frame(width: 418,height: 300)
                        .position(x: 208, y: 150)

                    Text(convertSecondsToTime(timeInSeconds:timeRemaining))
                        .font(.system(size: 50))
                        .position(x: 210, y: 70)
                        .onReceive(timer) { _ in
                            if isStarted {
                                timeRemaining -= 1
                                if timeRemaining == 0 {
                                    isStarted = false;
                                    exercise.done = true
                                }
                            }
                        }
                    HStack{
                        Button{
                            isStarted.toggle()
                            if timeRemaining == 0 {
                                timeRemaining = exercise.time
                            }
                        } label: {
                            ZStack{
                                if isStarted {
                                    Text("Pause").foregroundColor(.yellow)
                                } else {
                                    Text("Start").foregroundColor(.green)
                                }
                            }
                        }
                        .buttonStyle(GrowingButton())
                        .background(Color.white)
                        .foregroundColor(.blue)
                        .clipShape(Capsule())
                        .font(.system(size: 20))
                        .position(x: 92, y: 145)

                        Spacer().frame(minWidth:5,maxWidth:140)

                        NavigationLink(destination: ContentView()){
                            Button("Stop") {
                                isStarted = false;
                                timeRemaining = exercise.time
                            }
                            .buttonStyle(GrowingButton())
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .font(.system(size: 20))
                            .position(x: 50, y: 145)
                        }
                    }
                }
            }
        }.navigationTitle("\(exercise.name) ").navigationBarTitleDisplayMode(.large)
            .onAppear{ timeRemaining = exercise.time }
    }
}
