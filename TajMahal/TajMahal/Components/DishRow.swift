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
        HStack {
            VStack {
                Image(dish.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 100)
                    .cornerRadius(8)
            }
            
            VStack(alignment: .leading) {
                Text(dish.name.capitalized)
                    .font(.custom("PlusJakartaSans-SemiBold", size: 14))
                    .foregroundStyle(.customGray)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 6)
                
                Text(dish.description)
                    .font(.custom("PlusJakartaSans-Regular", size: 12))
                    .foregroundStyle(.customGray)
                    .lineLimit(4)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 3)
                
                Spacer()
                
                HStack {
                    Text(dish.price)
                        .font(.custom("PlusJakartaSans-SemiBold", size: 12))
                        .foregroundStyle(.customGray)
                    
                    Spacer()
                    
                    SpiceLevelView(spiceLevel: dish.spiceLevel, size: 12)
                        .padding(.bottom, 3)
                }
            }
            .padding(.leading, 16)
            .padding(.bottom, 10)
            .padding(.top, 10)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 112)
        .padding(.vertical, 10)
        .padding(.leading, 12)
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    DishRow(dish: .init(name: "Pakoras a la viandess", description: "Test.padding(.horizonsdsdsssdsdsdsdsdsdsshorizonsdsdsssdsdsdsdsdsdss", allergens: "test", ingredients: "test", spiceLevel: SpiceLevel.medium, imageName: "Pakoras", price: "5.50€"))
        .preferredColorScheme(.dark)
}
