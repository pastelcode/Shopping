//
//  ShoppingApp.swift
//  Shopping
//
//  Created by Samuel Marroquín on 28/07/24.
//

import SwiftUI

@main
struct ShoppingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ViewModel())
        }
    }
}
