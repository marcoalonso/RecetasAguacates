//
//  AppView.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 11/01/22.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Aguacates")
                })
            
            ContentView()
                .tabItem ({
                    Image("tabicon-book")
                    Text("Recetas")
                })
            
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Madurez")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Configuracion")
                })
        }//TabView
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
