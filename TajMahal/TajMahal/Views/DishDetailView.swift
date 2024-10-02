//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 02/10/2024.
//

import SwiftUI

struct DishDetailView: View {
    let dish: Dish
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                        Image(dish.imageName)
                            .resizable()
                            .scaledToFit()
                            .overlay(alignment: .topTrailing) {
                                SpiceLevelView(spiceLevel: dish.spiceLevel, size: 12)
                                    .padding()
                            }
                            .cornerRadius(12)
                            .padding()
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Allergènes:")
                                .font(.system(size: 13))
                                .foregroundStyle(.primary.opacity(0.8))
                            
                            Text(dish.allergens)
                                .font(.system(size: 12))
                                .foregroundStyle(.secondary)
                        }
                        .padding()
                        
                        Spacer()
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Ingrédients:")
                                .font(.system(size: 13))
                                .foregroundStyle(.primary.opacity(0.8))
                            
                            Text(dish.ingredients)
                                .font(.system(size: 12))
                                .foregroundStyle(.secondary)
                        }
                        .padding()
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
        }
    }
}


#Preview {
    DishDetailView(dish: ViewModel().mainCourseArray[1])
}
