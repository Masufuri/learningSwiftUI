//
//  ScrollViewInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 30/9/25.
//

import SwiftUI

struct ScrollViewInSwiftUI: View {
    @State var hasReachEnd: Bool = false
    var range: ClosedRange<Int> = 0 ... 50
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(range, id: \.self) { item in
                            createTxtVw(with: item)
                        }
                    }
                    .padding(.bottom, 50)
                    .overlay(alignment: hasReachEnd ? .bottomTrailing : .bottomLeading) {
                        HStack {
                            Button {
                                if let firstIndex = range.min() {
                                    withAnimation {
                                        proxy.scrollTo(firstIndex)
                                    }
                                    hasReachEnd = false
                                }
                            } label: {
                                Image(systemName: "arrow.backward")
                            }
                            
                            Button {
                                if let lastIndex = range.max() {
                                    withAnimation {
                                        proxy.scrollTo(lastIndex)
                                    }
                                    hasReachEnd = true
                                }
                            } label: {
                                Image(systemName: "arrow.forward")
                            }
                        }
                        .symbolVariant(.circle.fill)
                        .font(.title.weight(.black))
                    }
                }
                
                
            }
        }
        

    }
}

#Preview {
    ScrollViewInSwiftUI()
}

extension ScrollViewInSwiftUI {
    func createTxtVw(with: Int) -> some View {
        Text("\(with)")
            .frame(maxWidth: .infinity)
            .padding()
            .background(.mint, in: RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal, 8)
    }
}
