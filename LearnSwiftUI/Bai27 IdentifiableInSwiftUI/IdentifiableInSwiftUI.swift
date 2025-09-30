//
//  IdentifiableInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 30/9/25.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let userName: String
    let lastName: String
}

struct IdentifiableInSwiftUI: View {
    @State private var persons: [Person] = [
        Person(userName: "Chien", lastName: "Nguyen"),
        Person(userName: "Nguyen", lastName: "Chien")]
    var body: some View {
        VStack {
            List(persons) { person in
                Text("\(person.id) - \(person.userName) \(person.lastName)")
            }

            Button("alo") {
//                persons[0].lastName = "asdasd"
            }
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    IdentifiableInSwiftUI()
}
