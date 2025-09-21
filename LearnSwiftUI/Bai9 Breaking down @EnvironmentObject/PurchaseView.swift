//
//  PurchaseView.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI

struct PurchaseView: View {
    @EnvironmentObject var purchaseVm: PurchaseViewModel
    var body: some View {
        if purchaseVm.isLoading {
            ProgressView()
        } else {
            Button {
                purchaseVm.purchase()
            } label: {
                Text("Purchase")
            }
            .disabled(purchaseVm.hasPurchase)
            .opacity(purchaseVm.hasPurchase ? 0.5 : 1)
        }
    }
}

#Preview {
    PurchaseView()
        .environmentObject(PurchaseViewModel())
}
