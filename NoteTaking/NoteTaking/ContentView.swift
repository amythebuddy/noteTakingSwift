//
//  ContentView.swift
//  NoteTaking
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: NewNoteView(), label: {
                    Text("Add Task")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                })
            }
            .navigationTitle("Notes")
        }
    }
}

#Preview {
    ContentView()
}
