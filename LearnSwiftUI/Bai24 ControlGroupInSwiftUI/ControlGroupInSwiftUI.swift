//
//  ControlGroupInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct ControlGroupInSwiftUI: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                VStack {
                    Text("Quantity")
                    ControlGroup {
                        //                        Text("asd")
                        decreaseBtn
                        increaseBtn
                    }
                }

                VStack {
                    Text("Quantity")
                    ControlGroup {
                        //                        Text("asd")
                        decreaseBtn
                        increaseBtn
                    }
                    .controlGroupStyle(.navigation)
                }

                ControlGroup {
                    //                        Text("asd")
                    decreaseBtn
                    increaseBtn
                }
                .controlGroupStyle(.quantity)
            }
        }
        .padding()
    }
}

#Preview {
    ControlGroupInSwiftUI()
}

extension ControlGroupInSwiftUI {
    var increaseBtn: some View {
        Button {
        } label: {
            Label("Increase", systemImage: "plus")
        }
    }

    var decreaseBtn: some View {
        Button {
        } label: {
            Label("Decrease", systemImage: "minus")
        }
    }
}

struct ControlGroupQuantityStyle: ControlGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            Label("Quantity", systemImage: "bag")
                .font(.body.weight(.bold))
            HStack {
                configuration.content
            }
        }
    }
}

extension ControlGroupStyle where Self == ControlGroupQuantityStyle {
    static var quantity: ControlGroupQuantityStyle {
        .init()
    }
}
