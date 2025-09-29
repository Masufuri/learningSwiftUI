//
//  AddingText.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct AddingText: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .italic()
                .underline(true, color: .red)
            Text("My Text Here")
                .foregroundStyle(.mint)
                .font(.largeTitle.weight(.black))
            
            Text("My Text Here")
                .font(.system(size: 18, weight: .semibold, design: .rounded))
            Text(.now, style: .timer)
            Text(.now, style: .time)
        }
        
        Group {
            Text(.now, style: .date)
            Text(Date.now, format: Date.FormatStyle(date: .abbreviated, time: .shortened))
            Text(72.30, format: .currency(code: "gbp"))
            Text(72.30, format: .currency(code: "usd"))
            Text(Date.now...Date.now.addingTimeInterval(3600))
            Text("View calendar \(Image(systemName: "calendar")) here")
        }
    }
}

#Preview {
    AddingText()
}
