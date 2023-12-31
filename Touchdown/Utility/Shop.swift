//
//  Shop.swift
//  Touchdown
//
//  Created by Farangis on 18/08/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
