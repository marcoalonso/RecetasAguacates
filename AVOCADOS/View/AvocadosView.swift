//
//  AvocadosView.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 11/01/22.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - Properties
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 20, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.2).repeatForever(autoreverses: true))
            
            VStack {
                Text("Aguacates".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
¡Cremoso, verde y lleno de nutrientes! El aguacate es un ingrediente poderoso en cualquier comida. ¡Disfruta de estas recetas de aguacate cuidadosamente seleccionadas para el desayuno, el almuerzo, la cena y más!
""")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .lineSpacing(10)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            Spacer()
        }//Vstack
        .background(
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .previewDevice("iPhone 13")
            .environment(\.colorScheme, .dark)
    }
}
