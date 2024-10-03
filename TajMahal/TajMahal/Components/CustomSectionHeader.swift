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
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.primary.opacity(0.8))
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 10)
        .padding(.bottom, 5)
    }
}

#Preview {
    MenuView()
}
