//
//  PhotoGrid.swift
//  Planet Sights
//
//  Created by Omer Cagri Sayir on 6.12.2023.
//

import SwiftUI

struct PhotoGrid: View {
    var planets: [Planets] = [Planets]()
    var body: some View {
        // planets => data => links[0] => image
        ScrollView {
            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 0) {
                ForEach(planets, id: \.href) { planet in
                    ForEach(planet.data, id: \.nasa_id) { d in
                        ZStack {
                            AsyncImage(url: URL(string: planet.links[0].href)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)

                            } placeholder: {
                                ProgressView()
                            }
                            
                            VStack{
                                Spacer()
                                Text(d.title ?? "No title")
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
        }
    }
}
//
//#Preview {
//    PhotoGrid()
//}
