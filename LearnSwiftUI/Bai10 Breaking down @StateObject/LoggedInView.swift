//
//  LoggedInView.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct LoggedInView: View {
    var didTapLogout: () -> Void = { }
    var body: some View {
        VStack {
            Text("You are logged in")
            Button("Logout") {
                didTapLogout()
            }
        }
    }
}

#Preview {
    LoggedInView()
}
