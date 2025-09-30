//
//  StackInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 30/9/25.
//

import SwiftUI

struct StackInSwiftUI: View {
    var body: some View {
        ZStack(alignment: .top) {
            
            
            Image(systemName: "star")
                .resizable()
                .symbolVariant(.fill)
                .scaledToFit()
                .foregroundStyle(.yellow)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    StackInSwiftUI()
}
