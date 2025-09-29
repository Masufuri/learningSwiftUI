//
//  ManageIgnoreAndAddToSafeArea.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct ManageIgnoreAndAddToSafeArea: View {
    @State private var text: String = ""
    private var gradientColors: [Color] = [.red, .blue, .yellow, .green]
    var body: some View {
        NavigationView {
            ZStack {
                backgroundVw
                ScrollView {
                    Text("Content")
                        
                        .font(.title.weight(.bold))
                    TextField("Text Field", text: $text)
                    ForEach(0...15, id: \.self) { item in
                        Text("\(item)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
                    }
//                        .padding()
//                        .background(.white, in: RoundedRectangle(cornerRadius: 8))
                }
                .foregroundStyle(.white)
                .textFieldStyle(.roundedBorder)
                .padding()
            }
            
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ManageIgnoreAndAddToSafeArea()
}

extension ManageIgnoreAndAddToSafeArea {
    var backgroundVw: some View {
        LinearGradient(colors: gradientColors,
                       startPoint: .top,
                       endPoint: .bottom)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}
