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
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 4), GridItem(.flexible(), spacing: 4)], spacing: 4) {
                ForEach(planets, id: \.href) { planet in
                    ForEach(planet.data, id: \.nasa_id) { d in
                        ZStack {
                            AsyncImage(url: URL(string: planet.links[0].href)) { image in
                                image
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .clipped()
                                    .mask { RoundedRectangle(cornerRadius: 30, style: .continuous) }
                                
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
