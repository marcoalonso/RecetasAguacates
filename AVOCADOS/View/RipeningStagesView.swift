//
//  RipeningStagesView.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 11/01/22.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - Properties
    
    var ripeningStages: [Ripening] = ripeningData
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }//:loop
                }//:Hstack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }//: VStack
        }//Scroll
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
