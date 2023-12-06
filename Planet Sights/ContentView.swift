//
//  ContentView.swift
//  Planet Sights
//
//  Created by Omer Cagri Sayir on 6.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var searching = ""
    
    var body: some View {
        HStack {
            TextField("What are you looking for?", text: $searching)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // TODO: 
            } label: {
                Text("Search")
            }
        }
    }
}

#Preview {
    ContentView()
}
