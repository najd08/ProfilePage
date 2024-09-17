//
//  ProfilePageApp.swift
//  ProfilePage
//
//  Created by Najd on 07/09/2024.
//

import SwiftUI
import SwiftData

struct MainContentView: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var bio: String
    @Binding var education: String
    @Binding var skills: String

    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            ContentView(name: $name, email: $email, bio: $bio, education: $education, skills: $skills)
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
                .tag(1)
        }
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            SignUpPage()
        }
    }
}
