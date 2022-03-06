//
//  SettingsView.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 11/01/22.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Properties
    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 120, height: 120, alignment: .center)
                    .shadow(color: Color("ColorBlackTranparentLight"), radius: 8, x: 0, y: 6)
                
                Text("Aguacates".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }//:Vstack
            .padding()
            
            Form {
                // MARK: - Section 1
                Section(header: Text("Configuracion General")){
                    Toggle(isOn: $enableNotifications) {
                        Text("Habilitar Notificationes")
                    }//Toggle
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Actualizar en segundo plano")
                    }
                }//Section
                // MARK: - Section 2
                Section(header: Text("Aplicacion")) {
                    if enableNotifications {
                        HStack {
                            Text("Producto").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone 12")
                        }
                        HStack {
                            Text("Campatibilidad").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Marco Alonso Rodriguez")
                        }
                        HStack {
                            Text("Diseñador").foregroundColor(Color.gray)
                            Spacer()
                            Text("Robero Perez")
                        }
                        HStack {
                            Text("Sitio Web").foregroundColor(Color.gray)
                            Spacer()
                            Text("https://github.com/marcoalonso")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.4")
                        }
                    } else {
                        HStack {
                            Text("Mensaje Personal").foregroundColor(Color.green)
                            Spacer()
                            Text("Disfruta tus aguacates 🥑")
                        }
                    }
                    
                }
            }
        }//Vstack
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
