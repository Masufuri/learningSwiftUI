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
    @State var isPresented: Bool = false
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
        
        Button("Click here") {
            isPresented.toggle()
        }
//        .sheet(isPresented: $isPresented) {
//            AloAlo()
//        }
        
        AloAlo()
        
        AddView(hello: $isPresented)
//            .frame(width: .infinity, height: 100)
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

struct AloAlo: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SettingViewController {
        .init()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        print("update")
    }
}

struct AddView: UIViewRepresentable {
    @Binding var hello: Bool
    func makeUIView(context: Context) -> UIView {
        guard let viewa = Bundle.main.loadNibNamed("TestView", owner: nil)?.first as? TestView else { return UIView()}
        return viewa
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        guard let viewa = uiView as? TestView else { return }
        viewa.asda = hello
    }
}
