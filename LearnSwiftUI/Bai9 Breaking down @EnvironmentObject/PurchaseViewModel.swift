//
//  PurchaseViewModel.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import Foundation

class PurchaseViewModel: ObservableObject {
    @Published var hasPurchase: Bool = false
    @Published var isLoading: Bool = false
    
    func purchase() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isLoading = false
            self.hasPurchase = true
        }
    }
}
