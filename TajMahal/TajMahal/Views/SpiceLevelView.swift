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
        HStack(spacing: 4) {
            Image("spice")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.customRed)
                .frame(height: size)
                .padding(.top, 6)
            
            Image("spice")
                .resizable()
                .scaledToFit()
                .foregroundStyle(spiceLevel == .medium || spiceLevel == .hot ? .customRed : .gray)
                .frame(height: size)
                .padding(.top, 6)
            
            Image("spice")
                .resizable()
                .scaledToFit()
                .foregroundStyle(spiceLevel == .hot ? .customRed : .gray)
                .frame(height: size)
                .padding(.top, 6)
        }
    }
}

#Preview {
    SpiceLevelView(spiceLevel: .medium, size: 16)
}
