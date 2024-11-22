//
//  PlanetDetailView.swift
//  Planets
//
//  Created by Sugandhi Hansika Kalansooriya on 2024-11-22.
//

import SwiftUI

struct PlanetDetailView: View {
    let planet: Planet
    
    var body: some View {
        HStack{ 
           
            
            VStack(alignment: .leading, spacing: 12) {
            Text(planet.name)
                .font(.largeTitle)
                .foregroundColor(Color("ColorPrimary"))
                .bold()
            
            VStack(alignment: .leading, spacing: 1) {
                Text("• Orbital Period: \(planet.orbital_period)")
                    .font(.title3)
                
                Text("• Gravity: \(planet.gravity)")
                    .font(.title3)
                
                Text("• Climate: \(planet.climate)")
                    .font(.title3)
                
            Spacer()
            }
            .padding()
            
        }
        .padding()}
       
        
        
        
    
     
    }
}

