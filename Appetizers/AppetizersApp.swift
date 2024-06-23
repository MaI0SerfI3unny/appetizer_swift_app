//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Danil Edkin on 02.06.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
