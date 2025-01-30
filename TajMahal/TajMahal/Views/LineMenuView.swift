//
//  LineMenuView.swift
//  TajMahal
//
//  Created by Tom Parouty on 04/01/2025.
//

import SwiftUI

var lightGreyColor = Color(red: 239/255, green: 243/255, blue: 244/255)
    

struct LineMenuView: View {
    
    let imageName: String
    let firstText: String
    let secondText: String
    let thirdText: Double
    var spicelevel: SpiceLevel
    
        
    var body: some View {
        
          
            HStack{
                Image(imageName)
                
                    .resizable()
                    .frame(width: 112, height: 86)
                    .multilineTextAlignment(.leading)
                    .cornerRadius(10)
                Spacer()
                VStack{
                    
                    Text(firstText)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(2)
                    
                    
                    Text(secondText)
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Text(String(thirdText))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(2)
                        Spacer()
                        
                        if spicelevel == .light {
                            Image("truepiment")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .padding(2)
                        } else if spicelevel == .medium {
                            HStack(spacing: 2) {
                                ForEach(0..<2) { _ in
                                    Image("truepiment")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                }
                            }
                        } else if spicelevel == .hot {
                            HStack(spacing: 2) {
                                ForEach(0..<3) { _ in
                                    Image("truepiment")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                }
                            }
                        }
               //  Boucle piment
//                        Image("truepiment")
//                                .resizable()
//                                .frame(width: 10, height: 10)
//                                .padding(2)
//                    
//                        Image("truepiment")
//                            .resizable()
//                            .frame(width: 10, height: 10)
//                        
//                        Image("truepiment")
//                            .resizable()
//                            .frame(width: 10, height: 10)
                        
                        
                    }
                }
            }
            
        
        
        }
        
    }


#Preview {
    LineMenuView(imageName: "Samosas", firstText: "Samosas aux légumes", secondText: "Délicieux chaussons frits garnis de légumes épicés", thirdText: 5,spicelevel:.hot )
    
}
