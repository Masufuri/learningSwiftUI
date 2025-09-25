//
//  ButtonsInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 24/9/25.
//

import SwiftUI

struct ButtonsInSwiftUI: View {
    @State var pressedCount: Int = 0
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Number of times pressed: \(pressedCount)")
                    Button {
                        pressedCount += 1
                    } label: {
                        Text("Example 1 Increase")
                    }
                }
                
                VStack {
                    Text("Number of times pressed: \(pressedCount)")
                    Button {
                        pressedCount += 2
                    } label: {
                        Text("Example 2 Increase")
                    }
                }
                
                Group {
                    Button("Cancel Example Role", role: .cancel) {
                        pressedCount += 1
                    }
                    
                    Button(role: .destructive) {
                    } label: {
                        Text("Destructive Role")
                    }
                    
                    Button(role: .none) {
                    } label: {
                        Text("Default Role")
                    }
                }
                
                Button {
                    print("asd")
                } label: {
                    Text("Press me")
                        .frame(minHeight: 44)
                        .frame(maxWidth: .infinity)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .tint(.white)
                        .font(.title)
                }
                .padding()
                
                Button {
                    
                } label: {
                    Text("Send Mail")
                }
                .buttonStyle(SendButtonStyle())
                
                Button {
                    
                } label: {
                    Text("Send Mail")
                }
                .buttonStyle(.sendButton)
                
                SendButton {
                    print("asdasd")
                }
            }
        }
    }
}

#Preview {
    ButtonsInSwiftUI()
}

extension ButtonStyle where Self == SendButtonStyle {
    static var sendButton:SendButtonStyle { .init() }
}

struct SendButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "paperplane")
                .symbolVariant(.fill)
            Divider()
                .padding(.vertical, 8)
            configuration.label
        }
        .frame(maxWidth: 150, minHeight: 55)
        .background(.mint)
        .clipShape(RoundedRectangle(cornerRadius: 7))
        .foregroundStyle(.white)
        .opacity(configuration.isPressed ? 0.6 : 1)
        
    }
}

struct SendButton: View {
    var callback: () -> Void = { }
    var body: some View {
        Button(action: callback) {
            Text("Send Mail")
        }
        .buttonStyle(.sendButton)
    }
}
