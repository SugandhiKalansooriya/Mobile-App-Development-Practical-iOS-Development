//
//  PlanetDetailView.swift
//  Planets
//
//  Created by Sugandhi Hansika Kalansooriya on 2024-11-22.
//

import SwiftUI


import SwiftUI

struct PlanetDetailView: View {
    let planet: Planet
    
    var body: some View {
        ZStack {
           
            
            VStack {
                HStack {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text(planet.name)
                            .font(.largeTitle)
                            .foregroundColor(Color("ColorPrimary"))
                            .bold()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack{
                                Text("•")
                                    .font(.title3)
                                    .foregroundColor(Color("ColorPrimary"))
                                Text(" Orbital Period : \(planet.orbital_period)")
                                    .font(.title3)
                            }
                            
                            HStack{
                                Text("•")
                                    .font(.title3)
                                    .foregroundColor(Color("ColorPrimary"))
                                Text("Gravity : \(planet.gravity)")
                                    .font(.title3)
                                
                            }
                            
                            HStack{
                                Text("•")
                                    .font(.title3)
                                    .foregroundColor(Color("ColorPrimary"))
                                Text("Climate : \(planet.climate)")
                                    .font(.title3)
                            }
                            
                            
                               
                        }
                        .padding(.top, 10)
                    }
                    .padding()
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("ColorSecondary"))
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
        }
    }
}


