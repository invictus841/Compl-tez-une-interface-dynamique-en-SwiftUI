//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                Image("TajMahal")
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Restaurant Indien")
                                .font(.subheadline)
                                .fontWeight(.light)
                            Text("Taj Mahal")
                                .bold()
                                .font(.title3)
                        }
                        
                        Spacer()
                        
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 32)
                
                VStack(spacing: 0) {
                    RestoInfoRow(logo: "clock", text: "Mardi", optionalText: "11h30 - 14h30・18h30 - 22h00")
                    RestoInfoRow(logo: "fork.knife", text: "Type de service", optionalText: "A emporter")
                    RestoInfoRow(logo: "map", text: "12 Avenue de la Brique - 75010 Paris")
                    RestoInfoRow(logo: "globe", text: "www.tajmahal.fr")
                    RestoInfoRow(logo: "phone", text: "06 12 34 56 78")
                }
                .padding(.horizontal, 32)
                
                Spacer()
                
                NavigationLink {
                    MenuView()
                } label : {
                    HStack {
                        Text("Accéder au menu")
                            .fontWeight(.heavy)
                    }
                    .frame(width: 320, height: 20)
                    .padding()
                    .background(Color.customRed)
                    .foregroundStyle(.white)
                    .cornerRadius(12)
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    WelcomeView()
}


