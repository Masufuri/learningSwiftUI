//
//  TestDivider.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 26/9/25.
//

import SwiftUI

struct TestDivider: View {
    var body: some View {
//        ScrollView {
            HStack {
                Text("Hello, World!")
                    .background(.yellow)
                Divider()
                Text("What")
                    .background(.yellow)
            }
//            .background(.blue)
            .padding()
            //        .background(.red)
        }
//    }
}

#Preview {
    TestDivider()
}
