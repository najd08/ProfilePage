//
//  ContentView.swift
//  ProfilePage
//
//  Created by Najd on 07/09/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var bio: String
    @Binding var education: String
    @Binding var skills: String

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Profile")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 20)
                    .foregroundColor(.primary)

                profileDetail(icon: "person", title: "Name", value: name)
                profileDetail(icon: "envelope", title: "Email", value: email)
                profileDetail(icon: "info.circle", title: "Bio", value: bio)
                profileDetail(icon: "graduationcap", title: "Education", value: education)
                profileDetail(icon: "star", title: "Skills", value: skills)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Profile")
    }
    
    private func profileDetail(icon: String, title: String, value: String) -> some View {
        HStack(alignment: .top) {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .font(.title2)
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text(value)
                    .font(.body)
            }
        }
        .padding(.vertical, 8)
    }
}


