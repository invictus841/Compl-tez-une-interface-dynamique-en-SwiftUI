//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                
                ScrollView {
                    Section(header: CustomSectionHeader(title: "Entrées")) {
                        ForEach(viewModel.apetizerArray, id: \.name) { appetizer in
                            NavigationLink {
                                DishDetailView(dish: appetizer)
                            } label: {
                                DishRow(dish: appetizer)
                                    .padding(.horizontal)
                            }
                        }
                    }
                    
                    Section(header: CustomSectionHeader(title: "Plats Principaux")) {
                        ForEach(viewModel.mainCourseArray, id: \.name) { mainCourse in
                            NavigationLink {
                                DishDetailView(dish: mainCourse)
                            } label: {
                                DishRow(dish: mainCourse)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton(image: "chevron.left", backText: "Menu"))
    }
}


#Preview {
    MenuView()
}





