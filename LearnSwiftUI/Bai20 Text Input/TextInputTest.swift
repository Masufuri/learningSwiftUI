//
//  Text Input.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 25/9/25.
//

import SwiftUI

struct TextInputTest: View {
    var body: some View {
        VStack {
            TextField("Enter text", text: .constant(""))
            TextField("hello", text: .constant(""), prompt: Text("asdasd"))
            SecureField("PassWord", text: .constant(""))
                
        }
    }
}

#Preview {
    TextInputTest()
}
