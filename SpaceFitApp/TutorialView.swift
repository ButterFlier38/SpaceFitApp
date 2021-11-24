//
//  TutorialView.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 18/11/21.
//

//
//  ContentView.swift
//  MCTesting
//
//  Created by Irene Fernando on 15/11/21.
//

import SwiftUI
import CoreData

struct TutorialView: View {
    @State var texty: CGFloat = 600
    @State var textx: CGFloat = 200
    @State var opac = 0.0
    @State var opacEarth = 1.0
    @State var scale: CGFloat = 1
    @State var showsDismissButton: Bool = false
    @Binding var shouldShowOnboarding: Bool 
 var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.black)
                        .scaleEffect(2)
            Image(uiImage: UIImage(named: "Earth.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(2.3)
                .position(x: 0, y: 400)
                .opacity(opacEarth)
                .animation(.easeIn(duration:4.0), value: opacEarth)
        
        VStack {
            Spacer()
            HStack{
                Text("🧑🏼‍🚀")
                    .font(.system(size: 80))
                
                Text(" Welcome to SpaceFit!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }.padding(.top).position(x:textx,y:texty)
                .animation(.linear(duration:0.7), value: texty)
            ZStack{
            Button{
                texty = 100
                opac = 1.0
                scale = 1.7
                opacEarth = 0.4
                showsDismissButton = true
            }label:{
                ZStack {
                    RoundedRectangle(cornerRadius: 20).frame(width: 250, height: 50, alignment: .center)
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding()
                }
           }
        
            if showsDismissButton{
            Button{
                shouldShowOnboarding.toggle()
            }label:{
                ZStack {
                    RoundedRectangle(cornerRadius: 20).frame(width: 250, height: 50, alignment: .center)
                    Text("Get Started")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding()
                }
        }}}}
            VStack(alignment: .leading, spacing: 0.0){
                HStack(){
                    Spacer().frame(minWidth:5,maxWidth:10)
                Image(systemName: "heart.fill").foregroundColor(.pink).opacity(opac)
                    Spacer().frame(minWidth:5,maxWidth:20)
                            Text("Let's get fit for the Space!")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .opacity(opac)
                                .foregroundColor(Color.white)
                    
                }
                            Spacer().frame(height:30)
                HStack(){
                    Spacer().frame(minWidth:5,maxWidth:10)
                    Image(systemName: "crown.fill").foregroundColor(.pink).opacity(opac)
                    Spacer().frame(minWidth:5,maxWidth:20)
                            Text("Improve your :").font(.footnote).fontWeight(.semibold).opacity(opac).foregroundColor(Color.white)
                }
                HStack{
                    Spacer().frame(minWidth:5,maxWidth:60)
                                Image(systemName: "heart.fill").scaleEffect(0.6).opacity(opac).foregroundColor(.pink)
                            Text("Aerobic skills").font(.caption2).opacity(opac).foregroundColor(Color.white)
                            }
                            HStack{
                                Spacer().frame(minWidth:5,maxWidth:63)
                                Image(systemName: "flame.fill").scaleEffect(0.6).opacity(opac).foregroundColor(.pink)
                                Text("Power skills").font(.caption2).opacity(opac).foregroundColor(Color.white)
                            }
                            HStack{
                                Spacer().frame(minWidth:0,maxWidth:60)
                                Image(systemName: "square.grid.3x3.middle.filled").scaleEffect(0.6).opacity(opac).foregroundColor(.pink)
                                Text("Core skills").font(.caption2).opacity(opac).foregroundColor(Color.white)
                            }
                            Spacer().frame(height:30)
                ZStack{
                            HStack(){
                               
                                Image("CircleProgress").opacity(opac).scaleEffect(0.5)
                            Text("Keep track of your progress").font(.footnote).fontWeight(.semibold).opacity(opac).foregroundColor(Color.white)
                                }
                              }
                        }.padding(.bottom).scaleEffect(scale).animation(.easeIn(duration:2.0), value: scale)
            
      
    }
//        .background(
//        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottomTrailing))
}
}



