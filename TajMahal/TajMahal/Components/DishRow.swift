//
//  DishRow.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 01/10/2024.
//

import SwiftUI

struct DishRow: View {
    let dish: Dish
    
    var body: some View {
        HStack(spacing: 16) {
            VStack {
                Image(dish.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 100)
                    .cornerRadius(8)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(dish.name.capitalized)
                    .lineLimit(2)
                    .font(.headline)
                    .foregroundStyle(.black.opacity(0.6))
                    .padding(.top, 6)
                
                Text(dish.description)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 3)
                
                Spacer()
                
                HStack {
                    Text(dish.price)
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    SpiceLevelView(spiceLevel: dish.spiceLevel, size: 12)
                        .padding(.bottom, 3)
                }
            }
            .padding(.leading, 8)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 112)
        .padding(16)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    DishRow(dish: .init(name: "pakoras", description: "Test.padding(.horizonsdsdsssdsdsdsdsdsdsshorizonsdsdsssdsdsdsdsdsdss", allergens: "test", ingredients: "test", spiceLevel: SpiceLevel.medium, imageName: "Pakoras", price: "5.50€"))
        .preferredColorScheme(.dark)
}
