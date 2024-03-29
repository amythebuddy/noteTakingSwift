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
    @State private var notes: [Note] = []
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                List{
                    ForEach(notes, id: \.self){ note in
                        NavigationLink(destination: DetailNoteView(), label: {
                            VStack{
                                Text(note.title)
                                Text(note.content)
                            }
                        })
                    }
                }
                NavigationLink(destination: NewNoteView(notes: $notes), label: {
                    Text("Add Task")
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
