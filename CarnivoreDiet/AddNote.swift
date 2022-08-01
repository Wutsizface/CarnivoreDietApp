//
//  AddNote.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/29/21.
//

import SwiftUI

struct AddNote: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var title = ""
    @State private var bodyText = ""
    var note: NoteEntry?
    let notes: Notes?
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextField("Note", text: $bodyText)
            }
            .navigationBarTitle("My Thoughts")
            .navigationBarItems(trailing: Button(action: {
                if var note = note {
                    note.title = title
                    note.body = bodyText
                    if let index = notes?.entries.firstIndex(where: {$0.id==note.id}) {
                        notes?.entries[index] = note
                    }
                } else {
                    notes?.entries.append(NoteEntry(title: title, body: bodyText))
                }
                
                presentationMode.wrappedValue.dismiss()
            }, label: {Text("Save")}))
        }
        .onAppear {
            if let note = note {
                title = note.title
                bodyText = note.body
            }
        }
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote(note: nil, notes: Notes())
    }
}
