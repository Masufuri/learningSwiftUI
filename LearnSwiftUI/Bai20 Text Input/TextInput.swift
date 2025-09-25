//
//  TextInput.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 25/9/25.
//

import SwiftUI

struct TextInput: View {
    
    struct User {
        var username: String = ""
        var password: String = ""
    }
    
    @FocusState var inputFocus: Bool
    @State var user: User = .init()
    
    var body: some View {
        VStack {
            userNameTF
            passwordTF
            btnSubmit
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .autocorrectionDisabled(true)
        .textInputAutocapitalization(.never)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    inputFocus.toggle()
                }
            }
        }
        .onSubmit(of: .text, submit)
    }
}

#Preview {
    TextInput()
}


extension TextInput {
    var userNameTF: some View {
        TextField("Username", text: $user.username)
            .textContentType(.username)
            .focused($inputFocus)
    }
    
    var passwordTF: some View {
        SecureField("Password", text: $user.password)
            .textContentType(.password)
            .focused($inputFocus)
            .submitLabel(.done)
    }
    
    var btnSubmit: some View {
        Button {
            submit()
        } label: {
            Text("Submit")
        }

    }
}

private extension TextInput {
    func submit() {
        print("aasdfsdf \(user)")
//        dismissKeyboard()
        inputFocus.toggle()
    }
}

extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
