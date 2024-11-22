//
//  Planet.swift
//  Planets
//
//  Created by Sugandhi Hansika Kalansooriya on 2024-11-22.
//


import Foundation

struct Planet: Codable, Identifiable {
    let id = UUID()
    let name: String
    let climate: String
    let orbital_period: String
    let gravity: String
    
    enum CodingKeys: String, CodingKey {
        case name, climate, orbital_period, gravity
    }
}

struct PlanetResponse: Codable {
    let results: [Planet]
}
