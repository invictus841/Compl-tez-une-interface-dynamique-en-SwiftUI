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
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.left")
                        .aspectRatio(contentMode: .fit)
                        .bold()
                        .foregroundStyle(.black)
                }
                ToolbarItem(placement: .principal) {
                    Text("Menu")
                        .bold()
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        .font(.title2)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}





