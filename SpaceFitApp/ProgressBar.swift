//
//  MyProgressBar.swift
//  Space fit
//
//  Created by Andrea Autiero on 17/11/21.
//

import SwiftUI

struct MyProgressBar: View {
    @Binding var progressValue: Float
    var body: some View{
        ZStack {
            Circle()
                .stroke(lineWidth: 15.0)
                .opacity(0.3)
                .foregroundColor(Color.red)
                Circle()
                    .trim(from: 0.0, to:CGFloat(min(self.progressValue, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.red)
                    .rotationEffect(Angle(degrees: 270.0))
                    .animation(.linear)
        }
    }
}
