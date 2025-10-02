//
//  Spacers.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 24/9/25.
//

import SwiftUI

struct SpacersSwiftUI: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Spacer()
                Text("Name:")
                    .bold()
                Text("Chien ND")
            }
            .background(.red)

            HStack {
                Text("Name:")
                    .bold()
                Text("Chien ND")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(.purple)

            HStack {
                Text("Name:")
                    .bold()
                    .background(.blue)
                Spacer()
                Text("Chien ND")
                    .background(.red)
            }
            .background(.green)

            HStack {
                Text("Name:")
                    .bold()
                    .background(.blue)
                Spacer(minLength: 150)
                Text("Chien ND")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
            }
            .background(.orange)
        }
    }
}

#Preview {
    SpacersSwiftUI()
}
