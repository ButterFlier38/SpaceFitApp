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
    @State var timeRemaining = 128
    @State var isStarted : Bool = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
   func convertSecondsToTime(timeInSeconds: Int)-> String{
       let minutes = timeInSeconds / 60
       let seconds = timeInSeconds % 60
       return String(format:"%02i:%02i", minutes, seconds)
   }
    var body: some View {
        VStack {
            NavigationView {
                       VStack {
                    
                    
                    Image(uiImage: UIImage(named: "squat.png")!)
                        .resizable().aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                        .frame(width: 200,height: 200)
                    
                    
                    HStack{
                        
                        Image(systemName: "figure.walk").foregroundColor(.blue)
                            .font(.system(size: 25.0))
//                            .position(x: 30, y: 53)
                        
                        Text(" Description")
                            .font(.system(size: 30.0))
//                            .position(x: -90, y: 53)
                   }
                    
                    Text("1: Stand with your feet shoulder-width apart.       2: Squat down as A with your arms bent next your side.                                                                            3: Drive back up through your heels into a jump, moving your arms down and back B.              *After you jump make sure to bend your knees on the landing, this will help you to land safely.           4: Repeat the process 20 times until the timer runs out.")
                        .font(.system(size: 18.0))
//                        .position(x: 200, y: 114)
                        .frame(width: 400, height: 200, alignment: .top)
                    
                    
                    HStack{
                        Image(systemName: "timer").foregroundColor(.blue)
                            .font(.system(size: 25.0))
//                            .position(x: 38, y: 30)
                        Text("Duration")
                            .font(.system(size: 25.0))
//                            .position(x: -100, y: 30)
                        
                        
                    }
                    let DurationSquat = "30 min"
                    Text (DurationSquat)
                        .font(.system(size: 15.0))
                    
                    
                    Spacer()
                    ZStack{
                    RoundedRectangle(cornerRadius: 35)
                        .fill(Color.blue)
                        .frame(width: 418,height: 250)
                        .position(x: 208, y: 135)
                    
              /*      Button("Press Me") {
                        print("Button pressed!")
                    }
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Circle())    */
                    
                    Text(convertSecondsToTime(timeInSeconds:timeRemaining))
                        .font(.system(size: 40))
                        .position(x: 210, y: 70)
                        .onReceive(timer) { _ in
                            if isStarted{timeRemaining -= 1}
                        }
                    
                    
                    HStack{
                    Button{
                        isStarted.toggle()
                                print("Button pressed!")
                            } label:{
                                ZStack{
//                                    Circle().scaleEffect(0.5)
                                    if isStarted{Text("Pause").foregroundColor(.black)}else{Text("Start").foregroundColor(.black)}
                                
                       
                                    }
                            }
                            .buttonStyle(GrowingButton())
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .clipShape(Capsule())
                            .position(x: 92, y: 145)
                            
                    Spacer().frame(minWidth:5,maxWidth:140)
                   
                    Button("Stop") {
                                print("Button pressed!")
                            }
                            .buttonStyle(GrowingButton())
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .position(x: 50, y: 145)
                    }
                    }
                   
                    
                }.navigationBarTitle("Squat")
            }
            }
            /*   Spacer()
             RoundedRectangle(cornerRadius: 35)
             .fill(Color.blue)
             .frame(width: 418,height: 250)
             .offset(y: 35)     */
            
        }
    }
    //        .navigationBarTitle("Aerobic")
    

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView().preferredColorScheme(.dark)
    }
}


//ciao
