//
//  CryptooApp.swift
//  Cryptoo
//
//  Created by Андрей  on 16.04.2023.
//

import SwiftUI

@main
struct CryptooApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
