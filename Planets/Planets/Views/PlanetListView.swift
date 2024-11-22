//
//  PlanetListView.swift
//  Planets
//
//  Created by Sugandhi Hansika Kalansooriya on 2024-11-22.
//

import SwiftUI

struct PlanetListView: View {
    @StateObject private var viewModel = PlanetsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.planets) { planet in
                        NavigationLink(destination: PlanetDetailView(planet: planet)) {
                            PlanetCardView(planet: planet)
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Planets")
            .onAppear {
                viewModel.fetchPlanets()
            }
        }
    }
}

