//
//  NumberList.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct NumberList: View {
    var body: some View {
        NavigationView {
            List(0..<20) { item in
                Text("Number \(item)")
            }
            .navigationTitle("Numbers")
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                btnPlus
            }
            .safeAreaInset(edge: .leading, alignment: .bottom) {
                slideBar
            }
        }
    }
}

#Preview {
    NumberList()
}

extension NumberList {
    var btnPlus: some View {
        Button {
            
        } label: {
            Image(systemName: "plus")
//                .foregroundStyle(.white)
//                .font(.title.bold())
//                .padding()
//                .background(.blue, in: Circle())
                .symbolVariant(.circle.fill)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.trailing)
        }
    }
    
    var slideBar: some View {
        VStack(alignment: .leading) {
            ForEach(["Home", "Features", "My Profile", "Settings"], id: \.self) { item in
                Text("\(item)")
                    .bold()
                    .padding()
            }
        }
    }
}
