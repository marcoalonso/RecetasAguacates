//
//  HeaderModel.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 13/01/22.
//

import Foundation
// MARK: -  Header Model
struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
