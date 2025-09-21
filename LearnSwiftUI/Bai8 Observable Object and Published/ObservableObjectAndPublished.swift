//
//  Observable Object and Published.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import SwiftUI
import UIKit

struct ObservableObjectAndPublished: View {
//    @State private var people: [String] = []
//    @State private var isLoading: Bool = false
    @StateObject private var viewModel: PeopleViewModel = .init()
    
    var body: some View {
//        Text("Hello, World!")
        if viewModel.isLoading {
            ProgressView()
        } else {
            Text("\(viewModel.people.isEmpty ? "No data" : viewModel.people.joined(separator: ", "))")
        }
        Button("Fetch") {
            self.viewModel.fetchPeople()
        }
    }
}

//extension ObservableObjectAndPublished {
//    func fetchPeople() {
//        self.isLoading = true
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.isLoading = false
//            self.people = ["Alice", "Bob", "Charlie"]
//        }
//    }
//}

class PeopleViewModel: ObservableObject {
    @Published var people: [String] = []
    @Published var isLoading: Bool = false
    
    func fetchPeople() {
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isLoading = false
            self.people = ["Alice", "Bob", "Charlie"]
        }
    }
}

#Preview {
    ObservableObjectAndPublished()
}
