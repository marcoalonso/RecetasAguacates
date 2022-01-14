//
//  FactModel.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 14/01/22.
//

import Foundation
// MARK: - Fact Model

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
