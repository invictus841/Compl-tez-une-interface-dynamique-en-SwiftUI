//
//  CustomSectionHeader.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 03/10/2024.
//


import SwiftUI

struct CustomSectionHeader: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.custom("PlusJakartaSans-Bold", size: 14))
                .foregroundStyle(.customGray)
            Spacer()
        }
        .padding(.horizontal, 5)
        .padding(.top, 10)
        .padding(.bottom, 5)
    }
}

#Preview {
    MenuView()
}
