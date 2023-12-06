//
//  ContentView.swift
//  Planet Sights
//
//  Created by Omer Cagri Sayir on 6.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var query = ""
    @State var items: [Planets] = [Planets]()
    let dataService = DataService()
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    HStack {
                        TextField("What are you looking for?", text: $query)
                        Button {
                            Task {
                                let collections = await dataService.planetSearch(query: query)
                                items = collections.items
                            }
                        } label: {
                            Text("Search")
                        }
                    }
                    .padding()
                    
                    List(items, id: \.href) {item in
                        ForEach(item.data, id: \.nasa_id) { d in
                            Text(d.title ?? "")
                        }
                    }
                    
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
