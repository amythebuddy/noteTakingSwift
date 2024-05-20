//
//  DetailNoteView.swift
//  NoteTaking
//
//  Created by StudentAM on 3/28/24.
//

import SwiftUI


struct DetailNoteView: View {
    @Binding var note : Note
    @State var content : String
    
    var body: some View {
        VStack{
            TextEditor(text: $content) // display content
                .padding()
                .onTapGesture {
                    editNote()
                }
                Spacer() // fill up the extra space
        }
        .frame(maxWidth: 360, maxHeight: 660, alignment: .leading)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .navigationTitle(note.title)
    }
    func editNote(){
        note.content = content
    }
}

#Preview {
    DetailNoteView(note: .constant(Note(title: "hi", content: "hac")), content: "")
}
