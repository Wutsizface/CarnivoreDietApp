//
//  HowToTab.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/22/21.
//

import SwiftUI

struct Collapsible<Content: View>: View {
    @State var label: () -> Text
    @State var content: () -> Content
    
    @State private var collapsed: Bool = true
    
    var body: some View {
        VStack {
            Button(
                action: { self.collapsed.toggle() },
                label: {
                    HStack {
                        self.label()
                        Spacer()
                        Image(systemName: self.collapsed ? "chevron.down" : "chevron.up")
                    }
                    .padding(.bottom, 1)
                    .background(Color.white.opacity(0.01))
                }
            )
            .buttonStyle(PlainButtonStyle())
            
            VStack {
                self.content()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: collapsed ? 0 : .none)
            .clipped()
            .animation(.easeOut)
            .transition(.slide)
        }
    }
}

struct HowToView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    HStack {
                    }
                    .padding(.bottom)
                    
                    Divider()
                        .padding(.bottom)
                    ForEach(HowToItem.allCases, id: \.self) {item in
                        Collapsible(
                            label: {
                                Text(item.titleText)
                                    .font(.system(size: 30))
                            },
                            content: {
                                HStack {
                                    Text(item.detailText)
                                        .font(.system(size: 25))
                                    Spacer()
                                }
                                .padding()
                                .background(Color.red)
                            }
                        )
                    }
                    .padding()
                    Spacer()
                }
            }
            .navigationBarTitle("How Does It Work?")
        }
    }
}

struct HowToTab_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
