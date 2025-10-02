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
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    inputFocus = false
                }
            VStack {
                VStack {
                    userNameTF
                    passwordTF
                    btnSubmit
                }
                .padding()
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled(true)
//                .textInputAutocapitalization(.never)
                .autocapitalization(.sentences)
                
                
                .onSubmit(of: .text, submit)
           
            Button("Click here") {
                isPresented.toggle()
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .tint(.orange)
            .controlSize(.large)
            //        .sheet(isPresented: $isPresented) {
            //            AloAlo()
            //        }
            
            AloAlo()
            
            AddView(hello: $isPresented)
            //            .frame(width: .infinity, height: 100)
            }
            
            
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    inputFocus.toggle()
                }
            }
        }
    }
}

#Preview {
    TextInput()
}


extension TextInput {
    var userNameTF: some View {
        TextField("Username", text: $user.username)
            .textContentType(.username)
            .keyboardType(.emailAddress)
            .focused($inputFocus)
    }
    
    var passwordTF: some View {
        SecureField("Password", text: $user.password)
            .textContentType(.password)
            .focused($inputFocus)
            .submitLabel(.continue)
    }
    
    var btnSubmit: some View {
        Button {
            submit()
        } label: {
            Text("Submit")
        }
        .padding()
        .tint(.mint)
        .buttonBorderShape(.roundedRectangle(radius: 8))
        .buttonStyle(.borderedProminent)

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
