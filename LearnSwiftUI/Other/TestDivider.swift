//
//  TestDivider.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 26/9/25.
//

import SwiftUI

struct TestDivider: View {
    var body: some View {
        HStack {
            Text("Hello, World!")
            Divider()
                .frame(height: 50)
                .background(.red)
            Text("What")
        }
        .padding()
    }
}

#Preview {
    TestDivider()
}
