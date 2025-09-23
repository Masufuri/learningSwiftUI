//
//  CapsuleStyle.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 23/9/25.
//

import Foundation
import SwiftUI

struct CapsuleStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
            
        Label(configuration)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
    
}

extension LabelStyle where Self == CapsuleStyle {
    static var capsule: CapsuleStyle {
        .init()
    }
}

struct StrongCapsuleStyle: LabelStyle {
    var color: Color = .blue
    
    func makeBody(configuration: Configuration) -> some View {
        Label(title: {
            configuration.title
                .foregroundStyle(color)
        }, icon: {
            configuration.icon
        })
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

extension LabelStyle where Self == StrongCapsuleStyle {
    static func strongCapsule(color: Color) -> StrongCapsuleStyle {
        .init(color: color)
    }
}
