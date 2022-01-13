//
//  DishesView.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 13/01/22.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            
                // MARK: - 1 Column
            VStack(alignment: .leading, spacing: 4) {
                HStack(){
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tostadas")
                }//HStack
                Divider()
                
                HStack(){
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }//HStack
                Divider()
                
                HStack(){
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Ensaladas")
                }//HStack
                Divider()
                
                HStack(){
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Expandir")
                }//HStack
            }//VStack
            
            // MARK: - 2nd Column
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.medium))
                    .imageScale(.large)
                    
                
                HStack {
                    Divider()
                }
            }
            
            // MARK: - 3rd Column
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }//Hstack
                Divider()
                
                HStack() {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }//Hstack
                Divider()
                
                HStack() {
                    Text("Sopas")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }//Hstack
                Divider()
                
                HStack() {
                    Text("Batidos")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }//Hstack
            }//VStack
        }//HStack
        .font(.system(.callout,design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 60, height: 50, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
