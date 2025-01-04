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
            
            Image("TajMahal")
            LineView()
            Spacer()
            
            // Bouton Accédez au menu
            
            NavigationLink {
                MenuView()
            } label : {
            
                ZStack {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(.red)
                    .frame(width: 350, height: 50)
                    Text("Accédez au menu")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
            }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
