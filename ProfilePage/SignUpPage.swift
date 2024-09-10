//
//  SignUpPage.swift
//  ProfilePage
//
//  Created by Najd on 07/09/2024.
//
import SwiftUI

struct SignUpPage: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var bio: String = ""
    @State var education: String = ""
    @State var skills: String = ""
    @State var showingProfile: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Sign Up Page")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 45)

                VStack(alignment: .leading, spacing: 10) {
                    // Name
                    Text("Name:")
                        .font(.headline)
                    TextField("Enter Your Name...", text: $name)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                        .textFieldStyle(PlainTextFieldStyle())

                    // Email
                    Text("Email:")
                        .font(.headline)
                    TextField("Enter Your Email...", text: $email)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                        .textFieldStyle(PlainTextFieldStyle())
                        .keyboardType(.emailAddress)

                    // Bio
                    Text("Bio:")
                        .font(.headline)
                    TextField("Enter Your Bio...", text: $bio)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                        .textFieldStyle(PlainTextFieldStyle())

                    // Education
                    Text("Education:")
                        .font(.headline)
                    TextField("Enter Your Education Level...", text: $education)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                        .textFieldStyle(PlainTextFieldStyle())

                    // Skills
                    Text("Skills:")
                        .font(.headline)
                    TextField("Enter Your Skills...", text: $skills)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                        .textFieldStyle(PlainTextFieldStyle())
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 30)

                // Sign Up Button
                NavigationLink(destination: ContentView(name: $name, email: $email, bio: $bio, education: $education, skills: $skills), isActive: $showingProfile) {
                    Button(action: {
                        showingProfile = true
                    }) {
                        Text("Sign Up")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 20)
            }
            .padding()
        }
    }
}

