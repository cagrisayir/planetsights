//
//  DataService.swift
//  Planet Sights
//
//  Created by Omer Cagri Sayir on 6.12.2023.
//

import Foundation

struct DataService {
    
    //    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func planetSearch(query: String = "Earth") async {
        // Check if api key exists
        //        guard apiKey != nil else {
        //            return
        //        }
        
        // 1. Create URL
        if let url = URL(string: "https://images-api.nasa.gov/search?q=\(query)&media_type=image&page=1&page_size=10") {
            do{
                let (data, response) = try await URLSession.shared.data(from: url)
                print(data)
                print(response)
            }catch {
                print("Data Service planet search error", error)
            }
        }
    }
}




