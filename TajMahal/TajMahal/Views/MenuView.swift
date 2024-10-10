//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    let viewModel: ViewModel = ViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
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
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.customBlack)
                    })
                }
                ToolbarItem(placement: .principal) {
                    Text("Menu")
                        .font(.custom("PlusJakartaSans-Bold", size: 18))
                        .foregroundStyle(.customBlack)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}





