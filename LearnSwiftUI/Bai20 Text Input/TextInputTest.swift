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
            TextField("hello", text: .constant(""))
            SecureField("PassWord", text: .constant(""))
        }
        .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    TextInputTest()
}
