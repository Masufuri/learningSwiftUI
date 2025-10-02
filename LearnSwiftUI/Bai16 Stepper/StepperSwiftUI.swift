//
//  StepperSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 24/9/25.
//

import SwiftUI

struct StepperSwiftUI: View {
    @State private var quantityOne: Int = 0
    var body: some View {
        VStack {
            Text("The user selected a quantity of \(quantityOne)")
            Stepper("Quantity:",
                    value: $quantityOne,
                    in: 0 ... 20,
                    step: 1)
        }

        VStack {
            Text("The user selected a quantity of \(quantityOne)")
            Stepper("",
                    value: $quantityOne,
                    in: 0 ... 20,
                    step: 1)
                .labelsHidden()
        }

        VStack {
            Stepper(value: $quantityOne,
                    in: 0 ... 20,
                    step: 1) {
                Text("Slices \(quantityOne)")
            }
            
        }
        
        VStack {
            Stepper(value: $quantityOne,
                    in: 0 ... 20,
                    step: 1) {
                Text("Burger \(quantityOne)")
            }onEditingChanged: { editingStarted in
                guard !editingStarted else { return }
                print("Changed \(quantityOne)")
            }
        }
    }
}

#Preview {
    StepperSwiftUI()
}
