//
//  FloatingActionButton.swift
//  notes-app
//
//  Created by Lekau on 2024/04/22.
//

import SwiftUI

struct FloatingActionButton: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Button(action: {
                print("I am clicking")
            }) {
                NavigationLink(
                    destination: notes_detail_view(note: "Hie"),
                    label: {
                        
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .frame(width: 40, height: 40)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(color: .gray, radius: 5)
                            .padding(.bottom, 110)
                            .padding(.leading, 270)
                    }
                )
                
            }.frame(width: 0, height: 0)
        }
    }}

#Preview {
    ContentView()
}
