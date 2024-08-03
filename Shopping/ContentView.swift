//
//  ContentView.swift
//  Shopping
//
//  Created by Samuel Marroquín on 28/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            MainView()
        }
    }
}

#Preview {
    ContentView()
        .environment(ViewModel.preview)
}
