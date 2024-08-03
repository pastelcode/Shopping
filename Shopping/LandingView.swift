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
                    .padding()
                CategoriesCarousel()
            }
        }
    }
}

#Preview {
    LandingView()
        .environment(ViewModel.preview)
}
