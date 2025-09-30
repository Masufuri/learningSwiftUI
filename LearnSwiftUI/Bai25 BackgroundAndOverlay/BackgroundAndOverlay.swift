//
//  BackgroundAndOverlay.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("5")
                    .padding()
                    .font(.footnote.weight(.bold))
                    .background(.yellow)
                
                Text("5")
                    .padding()
                    .font(.footnote.weight(.bold))
                    .background {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundColor(.white)
                            .font(.system(size: 32))
                            .offset(y: -2)
                    }
                    .background(.yellow)
                
                Text("5")
                    .padding()
                    .font(.footnote.weight(.bold))
                    .background {
                        Circle()
                            .fill(.yellow.opacity(0.3))
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundColor(.yellow)
                            .font(.system(size: 32))
                            .offset(y: -2)
                    }
                
                Text("5")
                    .padding()
                    .font(.footnote.weight(.bold))
                    .background(alignment: .bottom) {
                        Image(systemName: "star")
                            .symbolVariant(.fill)
                            .foregroundColor(.yellow)
                            .font(.system(size: 32))
                            .offset(y: -2)
                    }
                
                Image(.tasbihBall1)
                    .resizable()
                    .padding()
                    .frame(width: 100, height: 100)
                    .background {
                        Circle()
                            .fill(.blue)
                        
                    }
                    .overlay(alignment: .bottom) {
                        Text("Subscribe")
                            .font(.footnote.weight(.bold))
                            .padding(4)
//                            .padding(.vertical, 8)
                            .background {
                                Capsule()
                                    .fill(.yellow)
                            }
                    }
                
                Image(.tasbihBall1)
                    .resizable()
                    .padding()
                    .frame(width: 100, height: 100)
                    .background {
                        Circle()
                            .fill(.blue)
                    }
                    .overlay(alignment: .bottom) {
                        Text("Subscribe")
                            .foregroundStyle(.white)
                            .font(.footnote.weight(.bold))
                            .padding(4)
//                            .padding(.vertical, 8)
                            .background(.ultraThinMaterial, in: Capsule())
                    }
            }
        }
    }
}

#Preview {
    BackgroundAndOverlay()
}
