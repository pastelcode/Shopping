//
//  ProductCard.swift
//  Shopping
//
//  Created by Samuel Marroquín on 3/08/24.
//

import SwiftUI

struct ProductCard: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
//            ZStack fixes image oveflows.
//            From: https://stackoverflow.com/a/76882933/19842688
            ZStack {
                AsyncImage(url: product.imagesUrls.first!) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                        .padding()
                }
                .layoutPriority(-1)
                
                Color.clear
            }
            
            Group {
                Text(product.name)
                    .lineLimit(2)
                    .font(.title3)
                    .padding(.vertical, 5)
                
                Text(product.price.formatted(.currency(code: "USD")))
                    .bold()
            }
        }
        .compositingGroup()
        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
    }
}

#Preview {
    ScrollView {
        LazyVGrid(columns: [.init(), .init()]) {
            ForEach(0..<10, id: \.self) {_ in
                ProductCard(product: .forPreview)
            }
        }
    }
}
