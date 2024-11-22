//
//  PlanetsViewModel.swift
//  Planets
//
//  Created by Sugandhi Hansika Kalansooriya on 2024-11-22.
//

import Foundation
import Combine

class PlanetsViewModel: ObservableObject {
    @Published var planets: [Planet] = []
    private var cancellables = Set<AnyCancellable>()
    
    func fetchPlanets() {
        
        guard let url = URL(string: WebExtensions.PLANETS_URL) else { return }
        
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: PlanetResponse.self, decoder: JSONDecoder())
            .map { $0.results }
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case let .failure(error) = completion {
                    print("Failed to fetch planets: \(error)")
                }
            }, receiveValue: { [weak self] planets in
                self?.planets = planets
            })
            .store(in: &cancellables)
    }
}

