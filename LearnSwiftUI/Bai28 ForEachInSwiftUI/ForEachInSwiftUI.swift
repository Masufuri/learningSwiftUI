//
//  ForEachInSwiftUI.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 30/9/25.
//

import SwiftUI
struct Person28: Identifiable {
    let id = UUID()
    let userName: String
    let lastName: String

    static var data: [Person28] {
        [
            Person28(userName: "What", lastName: "Where"),
            Person28(userName: "Alo", lastName: "Hello")
        ]
    }
}

struct ForEachInSwiftUI: View {
    @State var persons: [Person28] = []
    var body: some View {
        VStack {
//            ForEach(persons, id: \.userName) { person in
//                Text("\(person.userName) \(person.lastName)")
//            }
            ForEach(persons) { person in
//                Text("\(person.userName) \(person.lastName)")
                PersonView(person: person)
            }
        }
        .onAppear() {
            self.persons = Person28.data
        }
    }
}

#Preview {
    ForEachInSwiftUI()
}


struct PersonView: View {
    let person: Person28
    var body: some View {
        Text("\(person.userName) \(person.lastName)")
    }
}
