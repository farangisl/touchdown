//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Farangis on 17/08/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
