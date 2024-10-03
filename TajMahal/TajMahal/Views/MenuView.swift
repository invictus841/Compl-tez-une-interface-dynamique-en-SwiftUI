//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 20) {
                        MenuSection(title: "Entrées", dishes: viewModel.apetizerArray)
                        MenuSection(title: "Plats Principaux", dishes: viewModel.mainCourseArray)
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: CustomBackButton(image: "chevron.left", backText: "Menu"))
        }
    }
}

#Preview {
    MenuView()
}





