//
//  SpiceLevelView.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 01/10/2024.
//

import SwiftUI

struct SpiceLevelView: View {
    let spiceLevel: SpiceLevel
    let size: CGFloat
    
    var body: some View {
        HStack(spacing: 8) {
            Image("piment")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.customRed)
                .frame(height: size)
            
            Image("piment")
                .resizable()
                .scaledToFit()
                .foregroundStyle(spiceLevel == .medium || spiceLevel == .hot ? .customRed : .gray)
                .frame(height: size)
            
            Image("piment")
                .resizable()
                .scaledToFit()
                .foregroundStyle(spiceLevel == .hot ? .customRed : .gray)
                .frame(height: size)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 4)
        .background {
            Capsule()
                .fill(Color.white)
        }
    }
}

#Preview {
//    SpiceLevelView(spiceLevel: .medium, size: 16)
    DishDetailView(dish: ViewModel().mainCourseArray[0])
}
