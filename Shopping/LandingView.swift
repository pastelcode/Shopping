//
//  LandingView.swift
//  Shopping
//
//  Created by Samuel Marroquín on 3/08/24.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.title)
                    .padding(.horizontal)
                
                CategoriesCarousel()
                    .padding(.bottom)
                
                HStack {
                    Text("Products")
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                    Button("See all") {
                        print("User desires to see all products")
                    }
                    .padding(.trailing)
                }

                ProductsGrid()
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    LandingView()
        .environment(ViewModel.preview)
}
