//
//  ImplementPadding.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 23/9/25.
//

import SwiftUI

struct ImplementPadding: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .border(.red, width: 1)
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(6)
            .border(.red, width: 1)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 40)
            .border(.red, width: 1)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 40)
            .border(.red, width: 1)
        VStack {
            Image(.tasbihBall1)
                
                .resizable()
                
                .frame(width: 100, height: 100)
                .padding(.bottom, 100)
                .border(.red)
            Text("TextLorem ipsum dolor sit amet, consectetur adipiscing labore et dolore magna aliqua.")
                .frame(maxWidth: 200)
                .border(.red)
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
        }
        .padding()
        .border(.red)
        .background(.gray)
    }
}

#Preview {
    ImplementPadding()
}
