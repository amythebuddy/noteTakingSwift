//
//  DetailNoteView.swift
//  NoteTaking
//
//  Created by StudentAM on 3/28/24.
//

import SwiftUI


struct DetailNoteView: View {
    var note : Note
    var body: some View {
        NavigationView{
            VStack{
                Text(note.content)
            }
            .navigationTitle(note.title)
        }
    }
}

#Preview {
    DetailNoteView(note: Note(title: "Hi", content: "Thien"))
}
