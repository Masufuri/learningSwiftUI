//
//  Border.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 17/9/25.
//

import SwiftUI

struct Border: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .padding()
////            .border(.red, width: 8)
////            .cornerRadius(10)
//            .overlay(
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(
//                        AngularGradient(colors: [.red,.blue,.red], center: .center),
//                        lineWidth: 8
//                    )
//            )
        ZStack {
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [.red,.blue,.red]), center: .center, endAngle: .degrees(360)),
                        lineWidth: 50
                )
                .padding()
            Text("asdasd")
        }
    }
}

#Preview {
    Border()
}
