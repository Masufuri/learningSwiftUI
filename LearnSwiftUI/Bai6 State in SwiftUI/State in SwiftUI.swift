//
//  State in SwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct State_in_SwiftUI: View {
    @State private var isOn = false
    var body: some View {
//        if isOn {
//            Text("what")
//                .padding()
//        } else {
//            Text("asdasd")
//                .padding()
//        }

//        Text(isOn ? "Hello" : "Don't Hello")
//        Button("Toggle Me") {
//            isOn.toggle()
//        }

        Image(systemName: "lightbulb")
            .font(.largeTitle)
            .foregroundStyle(isOn ? .yellow : .black)
            .symbolVariant(isOn ? .fill : .none)
        Toggle("IsOn", isOn: $isOn)
            .labelsHidden()
    }
}

#Preview {
    State_in_SwiftUI()
}
