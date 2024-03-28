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
    @Binding var note: [Note]
    @State private var warning = false
    
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
                            if title.isEmpty && content.isEmpty {
                                warning = true
                            } else {
                                warning = false
                            }
                        }
                })
                .padding(30)
                .alert(isPresented: $warning){
                    Alert(
                        title: Text("You do not have title/content"),
                        message: Text("Please type in title and content")
                    )
                }
            }
            .navigationTitle("New Note")
        }
        .navigationBarBackButtonHidden(true)
    }
    func addNewNote(){
        let newNote = Note(title: title, content: content)
        note.append(newNote)
    }
}

#Preview {
    NewNoteView(note: .constant([]))
}
