//
//  MainView.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import SwiftUI

struct MainView: View {
    private enum Tab {
        case featured
        case cart
        case profile
    }
    
    @Environment(ViewModel.self) private var viewModel
    
    @State private var selectedTab: Tab = .featured
    
    private var navigationTitle: String {
        switch selectedTab {
        case .featured:
            "Featured"
        case .cart:
            "Cart"
        case .profile:
            "Profile"
        }
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            LandingView()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            ContentUnavailableView("In construction...", systemImage: "hammer")
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
                .tag(Tab.cart)
            ContentUnavailableView("In construction...", systemImage: "hammer")
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
        }
        .navigationTitle(navigationTitle)
    }
}

#Preview {
    MainView()
        .environment(ViewModel.preview)
}


