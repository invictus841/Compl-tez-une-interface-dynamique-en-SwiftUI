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
                            .font(.custom("PlusJakartaSans-SemiBold", size: 12))
                            .foregroundStyle(.customGray)
                        
                        Text(dish.allergens)
                            .font(.custom("PlusJakartaSans-Regular", size: 12))
                            .foregroundStyle(.customGray)
                    }
                    .padding()
                    
                    Spacer()
                }
                
                Divider()
                    .padding(.horizontal)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Ingrédients:")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 12))
                            .foregroundStyle(.customGray)
                        
                        Text(dish.ingredients)
                            .font(.custom("PlusJakartaSans-Regular", size: 12))
                            .foregroundStyle(.customGray)
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
                            .foregroundStyle(.customBlack)
                        Text(dish.name)
                            .font(.custom("PlusJakartaSans-Bold", size: 18))
                            .foregroundStyle(.customBlack)
                    }
                })
            }
        }
    }
}



#Preview {
    DishDetailView(dish: ViewModel().mainCourseArray[1])
}
