//
//  LoginScreen.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct LoginScreen: View {
    @Binding var user:User
    var didTap:() -> Void = {}
    var body: some View {
        if #available(iOS 17.0, *) {
            VStack {
                TextField("Username",
                          text: $user.userName,
                          prompt: Text("Username?"))
                SecureField("Password",
                            text: $user.password)
                Button("Login") {
                    didTap()
                }
            }
            .padding(.horizontal, 8)
            .textFieldStyle(.roundedBorder)
            .onChange(of: user) { newValue in
                print(newValue)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    LoginScreen(user: .constant(.init()), didTap: {})
}
