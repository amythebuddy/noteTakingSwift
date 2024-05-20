//
//  ContentView.swift
//  NoteTaking
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct Note : Hashable {
    var title: String
    var content: String
}

struct ContentView: View {
    @State var notes: [Note] = []
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                List{ // create a list of notes
                    ForEach(notes.indices, id: \.self){ i in // for each note, attach a navigationLink
                        NavigationLink(destination: DetailNoteView(note: $notes[i], content: notes[i].content), label: {
                            VStack(alignment: .leading, content: {
                                Text(notes[i].title) //only display title and content
                                Text(notes[i].content)
                            })
                        })
                    }
                }
                NavigationLink(destination: NewNoteView(notes: $notes), label: { // go to another page to add note
                    Text("Add Note")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                        .padding(.top, 22)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                })
            }
            .navigationTitle("Notes")
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContentView()
}
