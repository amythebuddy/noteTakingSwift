//
//  NewNoteView.swift
//  NoteTaking
//
//  Created by StudentAM on 3/27/24.
//

import SwiftUI

struct NewNoteView: View {
    var body: some View {
        @State var title = ""
        @State var note = ""
        NavigationView {
            VStack {
                TextField("Title", text: $title)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .frame(maxWidth: 370)
                    .cornerRadius(10)
                TextEditor(text: $note)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .frame(maxWidth: 370)
                    .cornerRadius(10)
                NavigationLink(destination: ContentView(), label: {
                    Text("Add Note")
                        .background(.blue)
                        .foregroundColor(.white)
                    
                })
                    
            }
            .navigationTitle("New Note")
        }
    }
}

#Preview {
    NewNoteView()
}
