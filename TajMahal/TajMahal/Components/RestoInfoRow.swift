//
//  RestoInfoRow.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 01/10/2024.
//

import SwiftUI

struct RestoInfoRow: View {
    let logo: String
    let text: String
    var optionalText: String?
    
    var body: some View {
        HStack {
            Image(systemName: logo)

            Text(text)
            
            Spacer()
            
            if let optionalText {
                Text(optionalText)
            }
        }
        .padding(.vertical, 10)
        .font(.custom("Avenir-Heavy", size: 14))
        .fontWeight(.light)
    }
}

#Preview {
    RestoInfoRow(logo: "fork.knife", text: "Venez manger chez nous", optionalText: "Ouvert")
}
