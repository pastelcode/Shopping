//
//  MainView.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import SwiftUI

struct MainView: View {
    @Environment(ViewModel.self) private var viewModel
    
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
    MainView()
        .environment(ViewModel.preview)
}


