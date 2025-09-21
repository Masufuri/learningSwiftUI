//
//  LoggedInView.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct LoggedInViewBai11: View {
    @ObservedObject var vm: LoginViewModel
    var body: some View {
        VStack {
            Text("You are logged in")
            Button("Logout") {
                vm.logout()
            }
        }
    }
}

#Preview {
    LoggedInViewBai11(vm: .init())
}
