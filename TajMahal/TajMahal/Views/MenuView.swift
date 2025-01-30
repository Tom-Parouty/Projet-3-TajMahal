//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    @Environment(\.dismiss) var dismiss
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let menuViewModel: MenuViewModel = MenuViewModel()
    var body: some View {
//        HStack{
//            Image("fleche")
//                .resizable()
//                .frame(width: 20, height: 20)
//            
//            Text("Menu")
//                .fontWeight(.bold)
//                .foregroundColor(Color.gray)
//                .font(.system(size: 18))
//                .listRowBackground(Color.white.opacity(0.00))
//        }
        //NavigationView{
            List{
                Section{
                    ForEach(menuViewModel.apetizerArray, id:  \.name){
                        apetizer in
                        
                        LineMenuView(imageName:apetizer.imageName,
                                     firstText: apetizer.name,
                                     secondText: apetizer.description,
                                     thirdText:  apetizer.price ,
                                     spicelevel: apetizer.spiceLevel)
                    }
                    
                }
                header: {
                    Text("Entrées")
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .position(x: 140, y: 0)
                }
                
                
                
                
                Section{
                    ForEach(menuViewModel.mainCourseArray, id:  \.name){
                        mainCourse in
                        
                        NavigationLink { DishView(dishbis:mainCourse)} label : {
                            
                            LineMenuView(imageName: mainCourse.imageName,
                                         firstText: mainCourse.name,
                                         secondText: mainCourse.description,
                                         thirdText:  mainCourse.price ,
                                         spicelevel: mainCourse.spiceLevel)
                        }
                    }
                }
                
                header: {
                    Text("PLats Principaux")
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .position(x: 140, y: 0)
                }
            }
            .navigationTitle("Menu")
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
            .listRowSpacing(20)
        
            
            
            
            
            
       // }
   
        
        
            
        

    }
    
    

    }


#Preview {
    MenuView()
}
