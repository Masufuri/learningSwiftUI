//
//  LoginManager.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct LoginManagerBai11: View {
    @StateObject var vm = LoginViewModel()
    var body: some View {
        switch vm.currentState {
        case .loading:
            ProgressView()
        case .loggedIn:
            LoggedInViewBai11(vm: vm)
        case .notLoggedIn:
            LoginScreenBai11(vm: vm) {
                vm.login()
            }
        }

//        if vm.isLoading {
//            ProgressView()
//        } else {
//            if vm.isLoginSuccess {
//                LoggedInView() {
//                    vm.logout()
//                    LoginScreen(user: .constant(.init()))
//                }
//            } else {
//                LoginScreen(user: $vm.user) {
//                    vm.login()
//                }
//            }
//        }
    }
}

#Preview {
    LoginManagerBai11()
}
