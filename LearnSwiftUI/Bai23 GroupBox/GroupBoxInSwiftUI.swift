//
//  GroupBox.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct GroupBoxInSwiftUI: View {
    var body: some View {
        VStack {
            GroupBox("Saved Items") {
                Text("You've saved 5 items")
            }
            
            GroupBox {
                Text("You've saved 5 items")
            } label: {
                Label {
                    Text("Saved Items")
                } icon: {
                    Image(systemName: "star")
                        .symbolVariant(.fill)
                }
            }
            
            GroupBox {
                Text("You've saved 5 items")
            } label: {
                Label {
                    Text("Saved Items")
                        .bold()
                } icon: {
                    Image(systemName: "star")
                        .symbolVariant(.fill)
                }

            }.groupBoxStyle(.groupBoxStyle)



        }
        .padding()
        .background(.mint)
    }
}

#Preview {
    GroupBoxInSwiftUI()
}


struct GroupBoxStyleee: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            configuration.label
//                .font(.system(size: 17, weight: .semibold))
//                .frame(maxWidth: .infinity,alignment: .leading)
            configuration.content
                .frame(maxWidth: .infinity,alignment: .center)
            
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 8))
    }
}

extension GroupBoxStyle where Self == GroupBoxStyleee {
    static var groupBoxStyle:GroupBoxStyleee {
        .init()
    }
}
