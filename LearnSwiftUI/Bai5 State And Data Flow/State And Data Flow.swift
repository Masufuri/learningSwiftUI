//
//  State And Data Flow.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct State_And_Data_Flow: View {
    @State private var isOn = false
    var body: some View {
//        Text(isOn ? "On" : "Hello, World!")
//            .onTapGesture {
//                self.isOn.toggle()
//            }
        Image(systemName: "lightbulb")
            .font(.largeTitle)
            .foregroundStyle(isOn ? .yellow : .black)
            .symbolVariant(isOn ? .fill : .none)
        Toggle("Light", isOn: $isOn)
            .labelsHidden()
    }
}

#Preview {
    State_And_Data_Flow()
}
