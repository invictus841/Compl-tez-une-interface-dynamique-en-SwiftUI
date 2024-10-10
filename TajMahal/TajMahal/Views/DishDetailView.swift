//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 02/10/2024.
//

import SwiftUI

struct DishDetailView: View {
    let dish: Dish
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Image(dish.imageName)
                        .resizable()
                        .scaledToFit()
                        .overlay(alignment: .topTrailing) {
                            SpiceLevelView(spiceLevel: dish.spiceLevel, size: 16)
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
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Image(systemName: "chevron.left")
                            .aspectRatio(contentMode: .fit)
                            .bold()
                            .foregroundStyle(.black)
                        Text(dish.name)
                            .bold()
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                            .font(.title2)
                    }
                })
            }
        }
    }
}



#Preview {
    DishDetailView(dish: ViewModel().mainCourseArray[1])
}
