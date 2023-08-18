//
//  TitleView.swift
//  Touchdown
//
//  Created by Farangis on 17/08/23.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top)
            .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
    }
}
