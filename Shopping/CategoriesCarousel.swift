//
//  CategoriesCarousel.swift
//  Shopping
//
//  Created by Samuel Marroquín on 3/08/24.
//

import SwiftUI

struct CategoriesCarousel: View {
    @Environment(ViewModel.self) var viewModel
    
    @State private var animateSymbol = false
    
    var body: some View {
        if let categories = viewModel.categoriesLogic.categories {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(categories) { category in
                        CategoryBanner(category: category)
                            .containerRelativeFrame(.horizontal, count: 2, spacing: 0)
                            .scrollTransition { content, scrollTransitionPhase in
                                content
                                    .scaleEffect(scrollTransitionPhase.isIdentity ? 1 : 0.85)
                                    .opacity(scrollTransitionPhase.isIdentity ? 1 : 0.25)
                            }
                    }
                }
                .scrollTargetLayout()
            }
            .contentMargins(.horizontal, 20)
            .scrollTargetBehavior(.viewAligned)
        } else {
            ContentUnavailableView(
                "Couldn't fetch categories",
                systemImage: "exclamationmark.circle",
                description: Text("There was an error fetching categories. Please try again.\nDescription: \(viewModel.categoriesLogic.errorMessage!)")
            )
            .symbolRenderingMode(.multicolor)
            .symbolEffect(.bounce, value: animateSymbol)
            .onAppear {
                animateSymbol.toggle()
            }
        }
    }
}

#Preview {
    ScrollView {
        VStack {
            CategoriesCarousel()
        }
    }
    .environment(ViewModel.preview)
}
