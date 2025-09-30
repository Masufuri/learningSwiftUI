//
//  LazyGridsInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 30/9/25.
//

import SwiftUI

struct LazyGridsInSwiftUI: View {
    private let items = (1 ... 50).map { "Item \($0)" }
    private let columns: [GridItem] = [
        GridItem(.flexible(minimum: 50, maximum: 100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(50))
//        GridItem(.adaptive(minimum: 50, maximum: 100)),
//        GridItem(.adaptive(minimum: 100, maximum: 150)),
    ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: columns,
                      alignment: .top,
                      spacing: 20,
                      pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(items, id: \.self) { item in
                        Text("\(item)")
                            .padding(.vertical, 50)
                            .frame(maxWidth: .infinity)
                            .background(.blue, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                } header: {
                    Text("Section One")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                }
                Section {
                    ForEach(items, id: \.self) { item in
                        Text("\(item)")
                            .padding(.vertical, 50)
                            .frame(maxWidth: .infinity)
                            .background(.blue, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                } header: {
                    Text("Section Two")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                }
                Section {
                    ForEach(items, id: \.self) { item in
                        Text("\(item)")
                            .padding(.vertical, 50)
                            .frame(maxWidth: .infinity)
                            .background(.blue, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                } header: {
                    Text("Section Three")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                }
                
            }
        }
        .clipped()
    }
}

#Preview {
    LazyGridsInSwiftUI()
}
