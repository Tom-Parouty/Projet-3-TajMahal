//
//  LineDishView.swift
//  TajMahal
//
//  Created by Tom Parouty on 05/01/2025.
//

import SwiftUI

struct LineDishView: View {
    
    let dish: Dish
    
    var body: some View {
        VStack {
       
            HStack{
                Text("Allergènes :")
                    .font(.system(size: 12))
                 
                Spacer()
                    
                   
            }
            .padding(.leading, 15)
            .padding(.vertical, 5)
            
            Text(dish.allergens)
                .foregroundColor(Color.gray)
                .font(.system(size: 12))
              //  .font(.custom("PlusJakartaSans", size: 12))
             
              
            HStack{
                
                Text("Ingrédients :")
                    .font(.system(size: 12))
                 
                Spacer()
                
            }
         
            .padding(.leading, 15)
            .padding(.vertical, 5)
            
            
            Text(dish.ingredients)
                .foregroundColor(Color.gray)
                .font(.system(size: 12))
                //.font(.custom("PlusJakartaSans", size: 12))

                .padding(.horizontal)
            Spacer()
        }
    }
    
    
}

#Preview {

}
