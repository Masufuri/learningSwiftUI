//
//  LazyStackInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 30/9/25.
//

import SwiftUI

struct LazyStackInSwiftUI: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 10, pinnedViews: .sectionFooters) {
//                ForEach(1...1000000, id: \.self) { item in
//                    Text("\(item)")
//                }
                Section {
                    ForEach(1...50, id: \.self) { item in
                        Text("\(item)")
                    }
                } footer: {
                    Text("First Section")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                        .clipped()
                        
                }
                
                Section {
                    ForEach(51...100, id: \.self) { item in
                        Text("\(item)")
                    }
                } footer: {
                    Text("Second Section")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                        .clipped()
                }

            }
        }
    }
}

#Preview {
    LazyStackInSwiftUI()
}
