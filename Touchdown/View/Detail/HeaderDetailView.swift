//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Farangis on 17/08/23.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
        
    }
        
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
    }
}
