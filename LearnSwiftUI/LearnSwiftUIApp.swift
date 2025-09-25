//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 16/9/25.
//

import Combine
import SwiftUI

@main
struct LearnSwiftUIApp: App {
    @StateObject var vm = PurchaseViewModel()
    @StateObject var router: TabRouter = TabRouter()

    var body: some Scene {
        WindowGroup {
//            ContentView() //Bai 1

            // Bai 9
//            TabView {
//                PurchaseView()
//                    .environmentObject(vm)
//                    .tabItem {
//                        Image(systemName: "creditcard")
//                        Text("Purchase")
//                    }
//                PurchaseState()
//                    .environmentObject(vm)
//                    .tabItem {
//                        Image(systemName: "gear")
//                        Text("State")
//                    }
//            }

            // Bai 10
//            LoginManager()
//            ArcAnimationView()
//            LabelLabelStyle()

            // Bai 19
//            TabView(selection: $router.currentScreen) {
//                ScreenOne()
//                    .badge(10)
//                    .tag(Screen.one)
//                    .environmentObject(router)
//                    .tabItem {
//                        Label("Screen 1", systemImage: "calendar")
//                    }
//                ScreenTwo()
//                    .tag(Screen.two)
//                    .environmentObject(router)
//                    .tabItem {
//                        Label("Screen 2", systemImage: "house")
//                    }
//            }
            
            TextInput()
        }
    }
}

enum Screen {
    case one
    case two
}

class TabRouter: ObservableObject {
    @Published var currentScreen: Screen = .one

    func switchTo(_ screen: Screen) {
        currentScreen = screen
    }
}
