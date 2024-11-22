//
//  PlanetCardView.swift
//  Planets
//
//  Created by Sugandhi Hansika Kalansooriya on 2024-11-22.
//

import Foundation
import SwiftUI

import SwiftUI

struct PlanetCardView: View {
    let planet: Planet
    
    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: URL(string: "\(WebExtensions.IMAGE_URL)\(planet.name)/100/100")) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .overlay( 
                                                    Circle()
                                                        .stroke(Color("ColorPrimary"), lineWidth: 2)
                                                )
                        
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.gray)
                        .clipShape(Circle())
                        .overlay(
                                                    Circle()
                                                        .stroke(Color("ColorPrimary"), lineWidth: 2)
                                                )
                default:
                    ProgressView()
                        .frame(width: 80, height: 80)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(planet.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text("Climate: \(planet.climate)")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
            Spacer()
        }
        .padding()
        .background(Color("ColorSecondary"))
        .cornerRadius(10)
        .overlay(                     RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("ColorPrimary"), lineWidth: 1)
                )
        .shadow(radius: 2)
    }
}
