//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 16/9/25.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    @StateObject var vm = PurchaseViewModel()
    var body: some Scene {
        WindowGroup {
            
//            ContentView() //Bai 1
            TabView {
                PurchaseView()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Purchase")
                    }
                PurchaseState()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("State")
                    }
            }
        }
    }
}
