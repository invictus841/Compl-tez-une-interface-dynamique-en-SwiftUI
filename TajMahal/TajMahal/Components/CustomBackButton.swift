//
//  customBackButton.swift
//  TajMahal
//
//  Created by Alexandre Talatinian on 02/10/2024.
//
import SwiftUI

struct customBackButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    let image: String
    let backText: String?
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: image)
                    .aspectRatio(contentMode: .fit)
                    .bold()
                    .foregroundStyle(.black)
                Text(backText ?? "")
                    .bold()
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .font(.title2)
            }
        }
    }
}
