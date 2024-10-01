//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Section(header: Text("Entrées").font(.title2).fontWeight(.bold)) {
                    ForEach(viewModel.apetizerArray, id: \.name) { appetizer in
                        DishRow(dish: appetizer)
                            .padding(.horizontal)
                    }
                }
                
                Section(header: Text("Plats Principaux").font(.title2).fontWeight(.bold)) {
                    ForEach(viewModel.mainCourseArray, id: \.name) { mainCourse in
                        DishRow(dish: mainCourse)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}


#Preview {
//    WelcomeView()
    MenuView()
}



