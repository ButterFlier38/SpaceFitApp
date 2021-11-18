//
//  ContentView.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 17/11/21.
//

import SwiftUI

struct ContentView: View {
    @State private var progressValue: Float = 0.0
    
    var body: some View{
        ZStack{
            Color.white
                .opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack{
                MyProgressBar(progressValue: $progressValue)
                    .frame(width: 150.0, height: 150.0)
                    .padding(30.0)
                Spacer()
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
