//
//  PlanetCollection.swift
//  Planet Sights
//
//  Created by Omer Cagri Sayir on 6.12.2023.
//

import Foundation

struct PlanetCollection: Decodable {
    var version: String?
    var href: String?
    var items: [Planets]?
    var metadata: PlanetMetadata?
    var links: [PlanetLinks]?
}

struct PlanetMetadata: Decodable {
    var total_hits: Int?
}

struct PlanetLinks: Decodable {
    var rel: String?
    var prompt: String?
    var href: String?
}
