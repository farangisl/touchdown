//
//  ContentView.swift
//  Touchdown
//
//  Created by Farangis on 16/08/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal)
                        .padding(.bottom)
                        .padding(.top, UIApplication
                            .shared
                            .connectedScenes
                            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                            .first { $0.isKeyWindow }?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.03), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 30)
                                .frame(height: 300)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }
                            .padding()
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding()
                        }
                    }
                    
                    
                }
                .background(colorBackground.ignoresSafeArea())
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
