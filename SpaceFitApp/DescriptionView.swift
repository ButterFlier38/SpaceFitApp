//
//  DescriptionView.swift
//  SpaceFitApp
//
//  Created by Irene Fernando on 18/11/21.
//

import SwiftUI

struct DescriptionView : View {
    var body: some View {
        VStack {
            NavigationView {
               
            
                
            VStack{
                HStack{
                    Button{
//                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
                        
                    } label:{Text("Back")}
                        .position(x: 34, y: -27)
//                    Spacer()
Text("").navigationBarTitle("Squat")
                    
                    

                }
                
                Image(uiImage: UIImage(named: "squat.png")!)
                    .resizable().aspectRatio(contentMode: .fit)
                   .padding(.horizontal)
                   .frame(width: 200,height: 200)
                  // .offset(y: -35)
                   .position(x: 200,y: -30)
                 
               
            HStack{
                
                Image(systemName: "figure.walk").foregroundColor(.blue)
                        .font(.system(size: 25.0))
                        .position(x: 30, y: -35)
                
                Text(" Description")
                    .font(.system(size: 25.0))
                    .position(x: -105, y: -35)
    
                
                
                }
                
 /*          let descriptionSquat = """
                1: Stand with your feet shoulder - width apart.
                2: Squat down as A with your arms bent next your side.
                3: Drive back up through your heels into a jump, moving your arms down and back B.
                4: Repeat the process 20 times until the               timer runs out
                """                           */
                Text("                1: Stand with your feet shoulder - width apart. 2: Squat down as A with your arms bent next your side. 3: Drive back up through your heels into a jump, moving your arms down and back B. 4: Repeat the process 20 times until the               timer runs out")
                    .font(.system(size: 18.0))
//                    .position(x: 206, y: -70)
                    .frame(width: 400, height: 200, alignment: .top)
                
                
            HStack{
                Image(systemName: "timer").foregroundColor(.blue)
                        .font(.system(size: 25.0))
                Text("Duration")
                    .font(.system(size: 25.0))
                    
                    
                }
            let DurationSquat = "30 min"
                Text (DurationSquat)
                    .font(.system(size: 15.0))
                    
                
                Spacer()
                RoundedRectangle(cornerRadius: 35)
                    .fill(Color.blue)
                    .frame(width: 418,height: 250)
                    .offset(y:35)
                
                
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
    
}


struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
