//
//  ContentView.swift
//  SwiftUI-homework
//
//  Created by Дина Шварова on 15.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLogin = false
    
    var body: some View {
        TabView() {
            LoginView()
                .tabItem {
                    Label("Login", systemImage: "person")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
            InfoView()
                .tabItem {
                    Label("Art", systemImage: "globe")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
