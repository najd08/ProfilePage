//
//  ContentView.swift
//  ProfilePage
//
//  Created by Najd on 07/09/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var bio: String
    @Binding var education: String
    @Binding var skills: String

    var body: some View {
        VStack{
            Text("Profile Page")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 3)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack(alignment: .top) {
                    Image(systemName: "person")
                        .foregroundColor(.blue)
                        .font(.title2)
                    
                    Text("Name:")
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text(name)
                        .font(.body)
                }
                .padding(.vertical, 10)
                
                HStack(alignment: .top) {
                    Image(systemName: "envelope")
                        .foregroundColor(.blue)
                        .font(.title2)
                    
                    Text("Email:")
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text(email)
                        .font(.body)
                }
                .padding(.vertical, 10)
                
                HStack(alignment: .top) {
                    Image(systemName: "info.circle")
                        .foregroundColor(.blue)
                        .font(.title2)
                    
                    Text("Bio:")
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(bio)
                        .font(.body)
                }
                .padding(.vertical, 10)
                
                HStack(alignment: .top) {
                    Image(systemName: "graduationcap")
                        .foregroundColor(.blue)
                        .font(.title2)
                    
                    Text("Education:")
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(education)
                        .font(.body)
                }
                .padding(.vertical, 10)
                
                HStack(alignment: .top) {
                    Image(systemName: "star")
                        .foregroundColor(.blue)
                        .font(.title2)
                    
                    Text("Skills:")
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(skills)
                        .font(.body)
                    
                }
                .padding(.vertical, 5)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Profile")
        }
    }
}
