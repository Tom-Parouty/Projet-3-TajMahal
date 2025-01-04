//
//  LineView.swift
//  TajMahal
//
//  Created by Tom Parouty on 03/01/2025.
//

import SwiftUI

struct LineView: View {
    var body: some View {
        
        // Restaurant indien + Taj Mahal + logo
        VStack (alignment: .leading,spacing: 1) {
            Text("Restaurant indien")
                .font(.subheadline)
                .foregroundColor(Color.gray)
            HStack {
                Text("Taj Mahal")
                    .font(.title)
                    .font(.system(size: 23))
                Spacer()
              //  Image("Logo")
                 //   .renderingMode(.template)
                  //  .foregroundColor(Color.gray)
                   
            }
        }
        .padding()
            
            
        
        
        
       
        // Informations restaurant
        VStack (alignment: .leading,spacing: 15) {
            HStack {
                
                Image ("horloge")
                Text("Mardi")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 12))
                Spacer()
                Text("11h30 - 14h30 . 18h30 - 20h00")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
                
            }
            
            
        
                HStack {
                    
                    Image ("casserole")
                        .resizable()
                            .frame(width: 20, height: 20)
                    Text("Type de service")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 12))
                    Spacer()
                    Text("A emporter")
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                
            }
            HStack {
                Image ("Marqueur")
                    .resizable()
                        .frame(width: 20, height: 20)
                Text("12 Avenue de la Brique-75010 Paris")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 12))
                
            }
            HStack {
                
                Image ("globe")
                    .resizable()
                        .frame(width: 20, height: 20)
                Text("www.tajmahal.fr")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 12))
                Spacer()
              
            
        }
            HStack {
                
                Image ("phone")
                    .resizable()
                        .frame(width: 20, height: 20)
                    
                Text("06 12 34 56 78")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 12))
                Spacer()
              
            
        }
    }
    .padding()
        
      
      
            
    }
}

#Preview {
    LineView()
}
