//
//  RecipeCardView.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 15/01/22.
//

import SwiftUI


struct RecipeCardView: View {
    // MARK: - Properties

    var recipe: Recipe
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            
            //Card Image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(Color.white)
                            .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                        .padding(.trailing, 20)
                        .padding(.top, 22)
                            Spacer()
                            
                        }//VStack
                    }//Hstack
                )//Overlay
            
            VStack(alignment: .leading, spacing: 12){
                //Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                //Rates
                HStack(alignment: .center, spacing: 5) {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                        .foregroundColor(Color.yellow)
                    }
                }
                
                //Cooking
                HStack(alignment: .center, spacing: 12){
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    
                    HStack(alignment: .center, spacing: 2){
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }//Hstack
                .font(.footnote)
                .foregroundColor(Color.gray)
            }//Vstack
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(18)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}