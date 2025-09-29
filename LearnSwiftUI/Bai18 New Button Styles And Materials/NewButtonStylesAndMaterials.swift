//
//  NewButtonStylesAndMaterials.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 25/9/25.
//

import SwiftUI

struct NewButtonStylesAndMaterials: View {
    var body: some View {
        ScrollView {
            VStack {
                Button("Hello") {
                }
                .padding()
                .background(.red)
                .tint(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))

                Button("What is this?") {
                }
                .tint(.red)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
            }

            VStack(spacing: 16) {
                Text("Button Style Examples")

                Button("Button Style Examples") {}
                    .buttonStyle(.borderedProminent)
                    .tint(.mint)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)

                Button("Button Style Examples") {}
                    .buttonStyle(.bordered)
                    .tint(.mint)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)

                Button("Button Style Examples") {}
                    .buttonStyle(.borderless)
                    .tint(.mint)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)

                Button("Button Style Examples") {}
                    .buttonStyle(.plain)
                    .tint(.mint)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)

                Button("Button Style Examples") {}
                    .buttonStyle(.automatic)
                    .tint(.mint)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .controlSize(.large)
            }

            VStack(spacing: 16) {
                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)

                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)

                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
                .buttonBorderShape(.capsule)
                .controlSize(.large)

                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
            }

            VStack(spacing: 16) {
                Text("Button control Size Examples")
                    .bold()

                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.mini)
                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.small)
                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
                Button("Button Style Examples") {
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
            }

            VStack(spacing: 24) {
                Text("Material Examples")

                Button("Material Examples") {
                }
                .padding()
                .background(.ultraThinMaterial)
                .controlSize(.large)

                Button("Material Examples") {
                }
                .padding()
                .background(.thinMaterial, in: .capsule)
                .controlSize(.large)

                Button("Material Examples") {
                }
                .padding()
                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 8))
                .controlSize(.large)

                Button("Material Examples1") {
                }
                .padding()
                .background(.thickMaterial, in: RoundedRectangle(cornerRadius: 8))
                .controlSize(.large)

                Button("Material Examples") {
                }
                .padding()
                .background(.ultraThickMaterial, in: RoundedRectangle(cornerRadius: 8))
                .controlSize(.large)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.mint)
        }
    }
}

#Preview {
    NewButtonStylesAndMaterials()
}
