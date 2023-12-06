//
//  ContentView.swift
//  Planet Sights
//
//  Created by Omer Cagri Sayir on 6.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var query = ""
    let dataService = DataService()
    
    var body: some View {
        HStack {
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // TODO:
            } label: {
                Text("Search")
            }
        }
        .padding()
        .task {
            await dataService.planetSearch()
        }
    }
}
//
//#Preview {
//    ContentView()
//}
