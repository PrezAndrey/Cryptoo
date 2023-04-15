//
//  ContentView.swift
//  Cryptoo
//
//  Created by Андрей  on 16.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                Text("Secondary Color")
                    .foregroundColor(Color.theme.secondaryText)
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
