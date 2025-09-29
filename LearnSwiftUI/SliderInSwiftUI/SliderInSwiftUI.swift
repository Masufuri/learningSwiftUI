//
//  SliderInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct SliderInSwiftUI: View {
    @State var volume: Double = 0
    @State var hasChanged = false
    var step: Double = 5
    var range: ClosedRange<Double> = 0 ... 100
    var body: some View {
        VStack {
            Text("Current volume \(Int(volume))%")
            HStack {
                decreaseVolume
                Slider(value: $volume,
                       in: range,
                       step: step) {
                } minimumValueLabel: {
                    Text("\(Int(range.lowerBound))")
                } maximumValueLabel: {
                    Text("\(Int(range.upperBound))")
                } onEditingChanged: { hasChanged in
                    self.hasChanged = hasChanged
                }

//                Slider(value: $volume,
//                       in: range,
//                       step: step) { hasChanged in
//                    self.hasChanged = hasChanged
//                }
                increaseVolume
            }
        }
        .padding()
    }
}

#Preview {
    SliderInSwiftUI()
}

extension SliderInSwiftUI {
    var increaseVolume: some View {
        Button {
            withAnimation {
                guard volume < range.upperBound else { return }
                volume = volume + step
            }
        } label: {
            Image(systemName: "plus")
        }
        .opacity(hasChanged ? 0.5 : 1)
        .disabled(hasChanged)
    }

    var decreaseVolume: some View {
        Button {
            withAnimation {
                guard volume > range.lowerBound else { return }
                volume = volume - step
            }
        } label: {
            Image(systemName: "minus")
        }
        .opacity(hasChanged ? 0.5 : 1)
        .disabled(hasChanged)
    }
}
