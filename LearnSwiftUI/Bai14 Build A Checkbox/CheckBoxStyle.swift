//
//  CheckBoxStyle.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 24/9/25.
//
import Foundation
import SwiftUI

extension ToggleStyle where Self == ToggleCheckBoxStyle {
    static var checkBox: ToggleCheckBoxStyle {
        .init()
    }
}

struct ToggleCheckBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .font(.title)
        }
        .tint(.black)
    }
}
