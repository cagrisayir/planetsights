//
//  Planets.swift
//  Planet Sights
//
//  Created by Omer Cagri Sayir on 6.12.2023.
//

import Foundation

struct Planets: Decodable {
    var href: String?
    var data: [PlanetData]?
    var links: [PlanetsLinks]?
}

struct PlanetData: Decodable {
    var center: String?
    var title: String?
    var keywords: [String]?
    var nasa_id: String?
    var date_created: String?
    var media_type: String?
    var description_508: String?
    var secondary_creator: String?
    var description: String?
}

struct PlanetsLinks: Decodable {
    var href: String?
    var rel: String?
    var render: String?
}
