//
//  ScreenTwo.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 25/9/25.
//

import SwiftUI

struct ScreenTwo: View {
    @EnvironmentObject var tabBar: TabRouter
    var range: ClosedRange<Date> {
        let calendar = Calendar.current
        let max = calendar.date(byAdding: .year, value: 1, to: .now)
        let min = calendar.date(byAdding: .year, value: -1, to: .now)
        return min!...max!
    }
    @State var selectedDate: Date = .now
    var body: some View {
        VStack {
            Text("Screen Two")
            Button("Switch To Screen One") {
//                tabBar.switchTo(.one)
                tabBar.currentScreen = .one
            }
            DatePicker(selection: $selectedDate, in: range) {
                Text("asdasd")
            }
        }
    }
}

#Preview {
    ScreenTwo()
        .environmentObject(TabRouter())
}
