//
//  Multi-LineTextField.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct MultiLineTextField: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            description
            textEditor
            submitBtn
        }
        .padding()
    }
}

#Preview {
    MultiLineTextField()
}

extension MultiLineTextField {
    var textEditor: some View {
        TextEditor(text: $text)
            .frame(height: 250)
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray.opacity(0.2), lineWidth: 4)
            }
    }
    
    var description: some View {
        Text("Description")
    }
    
    var submitBtn: some View {
        Button {
            print("user inputed: \(text)")
        } label: {
            Text("Submit")
        }

    }
}
