//
//  LoginViewModel.swift
//  LearnSwiftUI
//
//  Created by Chien on 21/9/25.
//

import Foundation

struct User: Equatable {
    var userName:String = ""
    var password:String = ""
    
    mutating func reset() {
        userName = ""
        password = ""
    }
}

class LoginViewModel:ObservableObject {
    enum CurrentState {
        case loading
        case loggedIn
        case notLoggedIn
    }
    @Published var user:User = .init()
//    @Published var isLoading = false
//    @Published var isLoginSuccess:Bool = false
    @Published var currentState:CurrentState = .notLoggedIn
    
    func login() {
        guard !user.userName.isEmpty, !user.password.isEmpty else {
            return
        }
//        isLoading = true
        currentState = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.isLoading = false
//            self.isLoginSuccess = true
            self.currentState = .loggedIn
        }
    }
    
    func logout() {
//        isLoginSuccess = false
        currentState = .notLoggedIn
        user.reset()
    }
}
