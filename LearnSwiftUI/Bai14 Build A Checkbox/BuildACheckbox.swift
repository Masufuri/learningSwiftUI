//
//  BuildACheckbox.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 24/9/25.
//

import SwiftUI

struct BuildACheckbox: View {
    @State private var isOn: Bool = false
    var body: some View {
        Group {
            Toggle("Turn me on?", isOn: $isOn)
            Text(isOn ? "Hello, World!" : "Goodbye, World!")
        }
        Group {
            Toggle("", isOn: $isOn)
                .labelsHidden()
            Text(isOn ? "Hello, World!" : "Goodbye, World!")
        }
        
        Group {
            Toggle(isOn: $isOn) {
                Label {
                    Text(isOn ? "Is on" : "Is off")
                } icon: {
                    Image(systemName: "lightbulb")
                        .symbolVariant(isOn ? .fill : .none)
                }
                
            }
        }
        
        Group {
            Toggle(isOn: $isOn) {
                Label {
                    Text(isOn ? "Is on" : "Is off")
                } icon: {
                    Image(systemName: "lightbulb")
                        .symbolVariant(isOn ? .fill: .none)
                }

            }
            .toggleStyle(.button)
        }
        
        Group {
            Toggle("", isOn: $isOn)
                .labelsHidden()
                .toggleStyle(ToggleCheckBoxStyle())
                .font(.title)
        }
        
        Group {
            Toggle("", isOn: $isOn)
                .labelsHidden()
                .toggleStyle(.checkBox)
                .font(.title)
        }
    }
}

#Preview {
    BuildACheckbox()
}



