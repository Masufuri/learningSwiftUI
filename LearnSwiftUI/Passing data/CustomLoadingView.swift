//
//  CustomLoadingView.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct CustomLoadingView: View {
    @Binding var isLoading: Bool
    var body: some View {
        if isLoading {
            ProgressView()
        } else {
            Text("Loading success")
        }
    }
}

#Preview {
    CustomLoadingView(isLoading: .constant(true))
}
