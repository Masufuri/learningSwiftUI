//
//  PurchaseStatusView.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct PurchaseStatusView: View {
    @EnvironmentObject var vm: PurchaseViewModel
    var body: some View {
        VStack {
            Image(systemName: vm.hasPurchase ? "lock.open" : "lock")
                .font(.system(size: 50, weight: .bold))
                .symbolVariant(.fill)
            Text("The user has \(vm.hasPurchase ? "" : "not ")purchased the app.")
        }
    }
}

#Preview {
    PurchaseStatusView()
        .environmentObject(PurchaseViewModel())
}
