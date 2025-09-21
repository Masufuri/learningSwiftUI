//
//  LoginScreen.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct LoginScreenBai11: View {
    @ObservedObject var vm: LoginViewModel
//    @Binding var user:User
    var didTap:() -> Void = {}
    var body: some View {
        if #available(iOS 17.0, *) {
            VStack {
                TextField("Username",
                          text: $vm.user.userName,
                          prompt: Text("Username?"))
                SecureField("Password",
                            text: $vm.user.password)
                Button("Login") {
                    didTap()
                }
            }
            .padding(.horizontal, 8)
            .textFieldStyle(.roundedBorder)
            .onChange(of: vm.user) { newValue in
                print(newValue)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    LoginScreenBai11(vm: LoginViewModel())
}
