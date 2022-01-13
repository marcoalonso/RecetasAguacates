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
                
                
                
                // MARK: - Footer
                VStack(alignment: .center, spacing: 20){
                    Text("Todo acerca de los aguacates!")
                        .font(.system(.title2,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                    Text("Todo lo que querias saber acerca de los aguacates aqui lo encontraras, vamos no tengas miedo a averiguarlo!")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .padding(.horizontal, 40)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
