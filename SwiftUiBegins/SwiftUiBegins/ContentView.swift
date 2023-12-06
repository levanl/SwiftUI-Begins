//
//  ContentView.swift
//  SwiftUIBegins
//
//  Created by Levan Loladze on 06.12.23.
//

import SwiftUI

struct EditProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .padding()
                
                Spacer()
                Text("Edit Profile")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                Spacer()
            }
            
            HStack {
                Spacer()
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 170, height: 170)
                
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: 1)
                            .frame(width: 170, height: 170)
                            .background(
                                Image("profilePic")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 170, height: 170)
                                    .clipped()
                                    .foregroundColor(.white)
                            )
                        
                    )
                
                Spacer()
            }
            
            VStack(spacing: 10) {
                TextFieldWithLabel(label: "Name", placeholder: "test")
                TextFieldWithLabel(label: "Email", placeholder: "test@gmail.com")
                TextFieldWithLabel(label: "Password", placeholder: "*********")
                TextFieldWithLabel(label: "Date of Birth", placeholder: "31/02/2000")
                TextFieldWithLabel(label: "Country/Region", placeholder: "Georgia")
            }
            .padding()
            Spacer()
            
            Button("Button title") {
                print("Button tapped!")
            }
            
        }
        .padding(.horizontal, 18)
    }
}



struct TextFieldWithLabel: View {
    var label: String
    var placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            TextField(placeholder, text: .constant(""))
                .frame(height: 40)
                .padding(.horizontal)
                .font(.system(size: 15))
                .background(RoundedRectangle(cornerRadius: 6).stroke(Color(red: 84/255, green: 76/255, blue: 76/255, opacity: 0.14)))
        }
    }
}


#Preview {
    EditProfileView()
}
