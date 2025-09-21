//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 16/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            LinearGradient(stops: [.init(color: .black, location: 0.2),
//                                   .init(color: .blue, location: 0.5)], startPoint: .top, endPoint: .bottom)
//            RadialGradient(colors: [.black,.blue], center: .center, startRadius: 10, endRadius: 100)
            AngularGradient(colors: [.red,.yellow,.green,.blue,.purple], center: .center,
                            angle: .degrees(180))
            .mask {
                Text("Hello, world!")
                    .bold()
                    .font(.largeTitle)
            }
//                .ignoresSafeArea()
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundStyle(.tint)
                
                
//                    .foregroundStyle(.white)
//                    .padding()
                    
//            }
//            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
