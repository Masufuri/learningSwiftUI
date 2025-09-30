//
//  LayoutUIExample.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 30/9/25.
//

import SwiftUI

struct LayoutUIExample: View {
    @State var isMultiColumn: Bool = false
    var column: [GridItem] {
        Array(repeating: GridItem(.flexible()), count: isMultiColumn ? 2 : 1)
    }

    var body: some View {
        ScrollView(showsIndicators: false) {
            Button {
//                withAnimation(.spring) {
                    isMultiColumn.toggle()
//                }
            } label: {
                Image(systemName: isMultiColumn ? "rectangle.grid.1x2" : "rectangle.grid.2x2")
                    .symbolVariant(.fill)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()

            LazyVGrid(columns: column) {
                ForEach(1 ... 20, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.mint)
                        .frame(height: isMultiColumn ? 100 : 250)
                }
            }
            .animation(.spring(bounce: 0.18), value: isMultiColumn)
            .padding(.horizontal, 8)
        }
    }
}

#Preview {
    LayoutUIExample()
}
