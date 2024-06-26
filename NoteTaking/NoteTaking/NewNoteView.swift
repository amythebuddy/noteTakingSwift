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
    @State var warning = false // for alerting
    @Binding var notes : [Note]
    @Environment(\.presentationMode) var presentationMode //@Environment allows you to control the presentation mode of the current view
    var body: some View {
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
                    .onTapGesture { // this is to add a block of code.
                        addNewNote()
                    }
            })

            .padding()
            .alert(isPresented: $warning){ //alert if the user doesn't input anything
                Alert(
                    title: Text("You do not have title/content"),
                    message: Text("Please type in title and content")
                )
            }
        }
        .navigationTitle("New Note")
    
    }
    func addNewNote(){
        if title.isEmpty && content.isEmpty { // if the user didnt input anything, alert
            warning = true
        } else {
            warning = false
            let newNote = Note(title: title, content: content) //create a new note
            notes.append(newNote) // append the newNote to the array notes
            presentationMode.wrappedValue.dismiss() //dismisses the current view
        }
    }
}

#Preview {
    NewNoteView(notes: .constant([]))
}
