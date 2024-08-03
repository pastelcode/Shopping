//
//  CategoryBanner.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import SwiftUI

struct CategoryBanner: View {
    let category: Category
    
    var body: some View {
        ZStack(alignment: .bottom) {
            AsyncImage(url: category.coverURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            HStack() {
                VStack {
                    Text(category.name.localizedUppercase)
                }
                .padding()
                .bold()
                Spacer()
            }
            .background(.ultraThinMaterial)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    CategoryBanner(category: .forPreview)
}
