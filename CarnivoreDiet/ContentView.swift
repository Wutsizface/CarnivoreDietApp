//
//  ContentView.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HowToView()
                .tabItem {
                    Label("How To", systemImage: "heart")
            }
            
            FAQView()
                .tabItem {
                    Label("FAQ", systemImage: "questionmark.circle")
            }
            
            TrackingView()
                .tabItem{
                    Label("Tracker", systemImage: "plus")
                }
            
            ResourcesView()
                .tabItem {
                    Label("Resources", systemImage: "books.vertical")
            }
            
            NotesView()
                .tabItem {
                    Label("Notes", systemImage: "pencil")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
