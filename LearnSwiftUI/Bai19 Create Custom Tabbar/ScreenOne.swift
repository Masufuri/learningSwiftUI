//
//  CreateCustomTabbar.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 25/9/25.
//

import SwiftUI

struct ScreenOne: View {
    @EnvironmentObject var tabBar: TabRouter
    var body: some View {
        VStack {
            Text("Screen One")
            Button("Switch to Screen Two") {
//                tabBar.switchTo(.two)
                tabBar.currentScreen = .two
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.pink)
        .clipped()
    }
}

#Preview {
    ScreenOne()
        .environmentObject(TabRouter())
}
