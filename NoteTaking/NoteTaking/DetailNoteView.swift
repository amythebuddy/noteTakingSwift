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
        VStack{
            Text(note.content) // display content
                .padding()
                Spacer() // fill up the extra space
        }
        .frame(maxWidth: 360, maxHeight: 660, alignment: .leading)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .navigationTitle(note.title)
    }
}

#Preview {
    DetailNoteView(note: Note(title: "Hi", content: "Thien"))
}
