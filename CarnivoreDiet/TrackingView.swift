//
//  TrackingView.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 7/22/22.
//

import SwiftUI

struct TrackerEntry: Identifiable, Codable {
    var id = UUID()
    var foodItem: String
    var amount: String
}

class Tracking: ObservableObject {
    @Published var entries = [TrackerEntry]() {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(entries) {
                UserDefaults.standard.set(encoded, forKey: "Tracker Entries")
            }
        }
    }
    init() {
        if let entries = UserDefaults.standard.data(forKey: "Tracker Entries") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([TrackerEntry].self, from: entries) {
                self.entries = decoded
                return
            }
        }
        self.entries = []
    }
}

struct TrackingView: View {
    @ObservedObject var tracking = Tracking()
    @State private var showingAddNote = false
    var body: some View {
        NavigationView {
            List {
                ForEach(tracking.entries) { item in
                    NavigationLink(item.title, destination:AddNote(note: item, tracking: tracking) )
                    
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("Tracker")
            .navigationBarItems(trailing:
                NavigationLink(
                    destination: AddTracking(note: nil, tracking: tracking),
                    label: {
                    Image(systemName: "plus")
                })
            )
        } 
    }
    
}

struct TrackingView_Previews: PreviewProvider {
    static var previews: some View {
        TrackingView()
    }
}
