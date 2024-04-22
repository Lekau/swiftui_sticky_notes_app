//
//  ContentView.swift
//  notes-app
//
//  Created by Lekau on 2024/04/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm: String = ""
    @State private var notes: [String] = [
        "Buy groceries: Milk, eggs, bread",
        "Walk the dog at 7pm",
        "Call mom for her birthday",
        "Finish reading that book chapter",
        "Pay the electricity bill",
        "Schedule dentist appointment",
        "Fix the leaky faucet in the bathroom",
        "Water the plants",
        "Pick up dry cleaning",
        "Return library books",
        "Meet friend for lunch",
        "Go for a run",
        "Do laundry",
        "Clean the kitchen",
        "Watch that new movie everyone's talking about",
        "Write a thank-you note",
        "Organize your closet",
        "Meditate for 10 minutes",
        "Practice playing the guitar",
        "Learn a new recipe"
    ]
    var filteredNotes: [String] {
        guard !searchTerm.isEmpty else { return notes}
        return notes.filter { $0.localizedCaseInsensitiveContains(searchTerm)}
    }
    var colour: [Color] = [.blue, .green, .yellow, .purple, .orange]
    private var adaptiveColumns = [GridItem(.adaptive(minimum: 170))]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20,
                          content: {
                    ForEach(filteredNotes, id:\.self) { note in
                        NavigationLink(
                            destination: notes_detail_view(note: note),
                            label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 170, height: 170)
                                    .foregroundColor(colour[Int.random(in: 1 ..< 5)])
                                    .cornerRadius(10)
                                Text(note).foregroundColor(.black)
                                    .multilineTextAlignment(.center).padding()
            }
                        })
                    }
                })
            }.navigationTitle("My Sticky Notes")
            
        }.searchable(text: $searchTerm, prompt: "Search For Notes")
                FloatingActionButton()
    }
}

#Preview {
    ContentView()
}
