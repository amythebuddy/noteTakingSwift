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
                Text("Add Task")
                    .background(.blue)
                    .padding(23)
                    .frame(maxWidth: .infinity)
                    .border(Color.black)
                    .navigationTitle("Notes")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
