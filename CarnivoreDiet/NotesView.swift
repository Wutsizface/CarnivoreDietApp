//
//  NotesView.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/29/21.
//

import SwiftUI

struct NoteEntry: Identifiable, Codable {
    var id = UUID()
    var title: String
    var body: String
}

class Notes: ObservableObject {
    @Published var entries = [NoteEntry]() {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(entries) {
                UserDefaults.standard.set(encoded, forKey: "Entries")
            }
        }
    }
    init() {
        if let entries = UserDefaults.standard.data(forKey: "Entries") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([NoteEntry].self, from: entries) {
                self.entries = decoded
                return
            }
        }
        self.entries = []
    }
}

struct NotesView: View {
    @ObservedObject var notes = Notes()
    @State private var showingAddNote = false
    var body: some View {
        NavigationView {
            List {
                ForEach(notes.entries) { item in
                    NavigationLink(item.title, destination:AddNote(note: item, notes: notes) )
                    
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("Notes")
            .navigationBarItems(trailing:
                NavigationLink(
                    destination: AddNote(note: nil, notes: notes),
                    label: {
                    Image(systemName: "plus")
                })
            )
        }
    }
    func removeItems(at offsets: IndexSet) {
        notes.entries.remove(atOffsets: offsets)
    }
}
