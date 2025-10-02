//
//  ManageIgnoreAndAddToSafeArea.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 29/9/25.
//

import SwiftUI

struct ManageIgnoreAndAddToSafeArea: View {
    @State var safeAreaRegion: SafeAreaRegions = .all
    @State var edge: Edge.Set = .all
    @State var nameSafeAreaRegion:String = ".all"
    @State var nameEdge:String = ".all"
    
    @State private var text: String = ""
    @FocusState var focus: Bool
    private var gradientColors: [Color] = [.red, .blue, .yellow, .green]
    var body: some View {
        NavigationView {
            ZStack {
//                if #available(iOS 17.0, *) {
                    backgroundVw
//                } else {
                    // Fallback on earlier versions
//                }
                ScrollView {
                    Text("Content")
                        
                        .font(.title.weight(.bold))
                    TextField("Text Field", text: $text)
                        .focused($focus)
                    VStack(spacing: 50) {
                        VStack {
                            Text("SafeAreaRegion:")
                                .bold()
                            HStack {
                                safeAreaRegionButton(.all, text: ".all")
                                Spacer()
                                safeAreaRegionButton(.container, text: ".container")
                                Spacer()
                                safeAreaRegionButton(.keyboard, text: ".keyboard")
                                
                            }
                            .buttonStyle(.plain)
                        }
                        
                        VStack {
                            Text("Edge.Set:")
                                .bold()
                            HStack {
                                edgeButton(.all, text: ".all")
                                Spacer()
                                edgeButton(.top, text: ".top")
                                Spacer()
                                edgeButton(.bottom, text: ".bottom")
                                Spacer()
                                edgeButton(.horizontal, text: ".horizontal")
                            }
                            HStack {
                                
                                
                                
                                edgeButton(.vertical, text: ".vertical")
                                Spacer()
                                edgeButton(.leading, text: ".leading")
                                Spacer()
                                edgeButton(.trailing, text: ".trailing")
                            }
                            .buttonStyle(.plain)
                        }
                        Text(".ignoresSafeArea(\(nameSafeAreaRegion), edges: \(nameEdge))")
                            .bold()
                            .padding(8)
                            .foregroundStyle(.black)
                            .background(.white, in: RoundedRectangle(cornerRadius: 8))
                    }
                    ForEach(0...15, id: \.self) { item in
                        Text("\(item)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
                    }
//                        .padding()
//                        .background(.white, in: RoundedRectangle(cornerRadius: 8))
                }
                .foregroundStyle(.white)
                .textFieldStyle(.roundedBorder)
                .padding()
            }
            .onTapGesture {
                focus = false
            }
            .navigationTitle("Home")
        }
//        .onTapGesture {
//            focus = false
//        }
    }
    
    func safeAreaRegionButton(_ safeAreaRegion: SafeAreaRegions, text: String) -> some View {
        Button {
            withAnimation {
                self.safeAreaRegion = safeAreaRegion
                self.nameSafeAreaRegion = text
            }
            
        } label: {
            Text(text)
            Image(systemName: self.safeAreaRegion == safeAreaRegion ? "checkmark.square" : "square")
        }
    }
    
    func edgeButton(_ edge: Edge.Set, text: String) -> some View {
        Button {
            withAnimation {
                self.edge = edge
                self.nameEdge = text
            }
            
        } label: {
            Text(text)
            Image(systemName: self.edge == edge ? "checkmark.square" : "square")
        }
    }
}

#Preview {
    ManageIgnoreAndAddToSafeArea()
}

//@available(iOS 17.0, *)
extension ManageIgnoreAndAddToSafeArea {
    var backgroundVw: some View {
        LinearGradient(colors: gradientColors,
                       startPoint: .top,
                       endPoint: .bottom)
        .ignoresSafeArea(safeAreaRegion,edges: edge)
//        .safeAreaPadding(.all, 50)
    }
}
