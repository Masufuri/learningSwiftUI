//
//  PurchaseState.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct PurchaseState: View {
//    @EnvironmentObject var vm : PurchaseViewModel
    var body: some View {
        PurchaseStatusView()
    }
}

#Preview {
    PurchaseState()
        .environmentObject(PurchaseViewModel())
}
