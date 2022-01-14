//
//  ContentView.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 11/01/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20){
                
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                // MARK: - Dishes
                Text("Platillos")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: -  Avocado Facts
                Text("Datos del Aguacate")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60){
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }//HStack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }//Scroll
                
                
                // MARK: - Footer
                VStack(alignment: .center, spacing: 20){
                    Text("Todo acerca de los aguacates!")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Todo lo que querias saber acerca de los aguacates aqui lo encontraras, vamos no tengas miedo a averiguarlo!")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }//Vstack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//VStack
        }//Scroll
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title2,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
        .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData)
        
            .previewDevice("iPhone 13 Pro")
    }
}
