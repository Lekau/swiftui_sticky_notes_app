//
//  notes_detail_view.swift
//  notes-app
//
//  Created by Lekau on 2024/04/17.
//

import SwiftUI

struct notes_detail_view: View {
    @State var note: String
    var body: some View {
        NavigationStack {
                TextEditor(text:$note)
                .navigationTitle("Note title")
                .padding()
        }
    }
}

#Preview {
    notes_detail_view(note: "")
}
