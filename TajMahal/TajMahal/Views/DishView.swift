//
//  DishView.swift
//  TajMahal
//
//  Created by Tom Parouty on 05/01/2025.
//

import SwiftUI

struct DishView: View {
    @Environment(\.dismiss) var dismiss
    let dishbis: Dish
    
    var body: some View {
        HStack{
//            Image("fleche")
//                .resizable()
//                .frame(width: 25, height: 25)
            
//            Text(dishbis.name)
//                .fontWeight(.bold)
//                .font(.system(size: 23))
//                .padding(.leading, 20)
            Spacer()
            
        }
        .padding()
        HStack{
            
          
        }
        
        Image(dishbis.imageName)
            .resizable()
            .frame(width: 362, height: 467)
            .cornerRadius(10)
        
        Spacer()
        
        LineDishView (dish:dishbis)
        
            .navigationTitle("Chicken Tikka Masala")
         
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Label("", systemImage:"arrow.left")
                          
                    }  .tint(.black)
                    
                }
            }
    }
}

#Preview {
  
}
