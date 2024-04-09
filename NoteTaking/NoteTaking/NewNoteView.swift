//
//  NewNoteView.swift
//  NoteTaking
//
//  Created by StudentAM on 3/27/24.
//

import SwiftUI

struct NewNoteView: View {
    @State var title = ""
    @State var content = ""
    @State var warning = false
    @Binding var notes : [Note]
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TextField("Title", text: $title)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .frame(maxWidth: 370)
                    .cornerRadius(10)
                TextEditor(text: $content)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .frame(maxWidth: 370)
                    .cornerRadius(10)
                NavigationLink(destination: ContentView(), label: {
                    Text("Add Note")
                        .frame(maxWidth: 110, maxHeight: 60)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(8)
                        .onTapGesture {
                            addNewNote()
                        }
                })

                .padding()
                .alert(isPresented: $warning){
                    Alert(
                        title: Text("You do not have title/content"),
                        message: Text("Please type in title and content")
                    )
                }
            }
            .navigationTitle("New Note")
        }
    }
    func addNewNote(){
        if title.isEmpty && content.isEmpty {
            warning = true
        } else {
            warning = false
            let newNote = Note(title: title, content: content)
            notes.append(newNote)
        }
    }
}

#Preview {
    NewNoteView(notes: .constant([]))
}
