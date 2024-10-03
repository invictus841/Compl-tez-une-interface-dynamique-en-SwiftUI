//
//  MenuSection.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 03/10/2024.
//

import SwiftUI

struct MenuSection: View {
    let title: String
    let dishes: [Dish]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            CustomSectionHeader(title: title)
            
            ForEach(dishes, id: \.name) { dish in
                NavigationLink(destination: DishDetailView(dish: dish)) {
                    DishRow(dish: dish)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

#Preview {
    MenuSection(title: "Entrées", dishes: [
        Dish(name: "Pakoras", description: "Assortiment de plats indiens", allergens: "", ingredients: "", spiceLevel: .medium, imageName: "Pakoras", price: "5,50€"),
        Dish(name: "Pakoras", description: "Assortiment de plats indiens", allergens: "", ingredients: "", spiceLevel: .medium, imageName: "Pakoras", price: "5,50€")
    ])
}
