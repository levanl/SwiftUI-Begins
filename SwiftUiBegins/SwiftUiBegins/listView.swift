//
//  listView.swift
//  SwiftUIBegins
//
//  Created by Levan Loladze on 06.12.23.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let info: String
    let imageName: String
    let time: String
}

struct listView: View {
    
    @State private var people = [
        Person(name: "Jaba Dzlieri", info: "me dzlieri jabavar", imageName: "jaba", time: "20:00"),
        Person(name: "Genadi", info: "genadi kafeli", imageName: "steve", time: "22:31"),
        Person(name: "Dartyma Gvilia", info: "avacile dartyma", imageName: "gvilia", time: "09:18"),
        Person(name: "Murtazi", info: "iafshi gagiketeb", imageName: "murtazi", time: "yesterday"),
        Person(name: "Gamgebeli", info: "gaitane", imageName: "nadzirala", time: "Tuesday"),
        Person(name: "Levaniko", info: "swiftui ramagaria naxeeet??", imageName: "profilePic", time: "7/22/20"),
        Person(name: "bondo", info: "ubralod bondo", imageName: "profilePic", time: "7/22/20"),
        Person(name: "gurami", info: "guro", imageName: "profilePic", time: "7/22/20"),
        Person(name: "nika", info: "vaxto", imageName: "profilePic", time: "7/22/20")
    ]
    
    @State private var isListEmpty = false
    
    var body: some View {
        
        VStack (spacing: 30) {
            
            Spacer()
            
            Text(isListEmpty ? "Chats Cleared" : "Chat")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundStyle(.white)
            
            if !isListEmpty {
                List {
                    ForEach(people) { person in
                        PersonDetail(person: person)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .listRowInsets(EdgeInsets())
                    }
                }
                .listStyle(.plain)
                .listRowInsets(EdgeInsets())
            }
            
            Spacer()
            
            HStack (spacing: 60){
                Button("Clear Chat") {
                    people.removeAll()
                    isListEmpty = true
                }
                .frame(width: 150, height: 45)
                .background(.red)
                .foregroundStyle(.white)
                .cornerRadius(10)
                
                Button("Reset") {
                    people = [
                        Person(name: "Jaba Dzlieri", info: "me dzlieri jabavar", imageName: "jaba", time: "20:00"),
                        Person(name: "Genadi", info: "genadi kafeli", imageName: "steve", time: "22:31"),
                        Person(name: "Dartyma Gvilia", info: "avacile dartyma", imageName: "gvilia", time: "09:18"),
                        Person(name: "Murtazi", info: "iafshi gagiketeb", imageName: "murtazi", time: "yesterday"),
                        Person(name: "Gamgebeli", info: "gaitane", imageName: "nadzirala", time: "Tuesday"),
                        Person(name: "Levaniko", info: "swiftui ramagaria naxeeet??", imageName: "profilePic", time: "7/22/20"),
                        Person(name: "bondo", info: "ubralod bondo", imageName: "profilePic", time: "7/22/20"),
                        Person(name: "gurami", info: "guro", imageName: "profilePic", time: "7/22/20"),
                        Person(name: "nika", info: "vaxto", imageName: "profilePic", time: "7/22/20")
                    ]
                    isListEmpty = false
                }
                .frame(width: 150, height: 45)
                .background(Color(red: 36/255, green: 39/255, blue: 96/255))
                .foregroundStyle(.white)
                .cornerRadius(10)
                
            }
            .padding(.horizontal, 20)
        }
        .padding(0)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
    }
}

struct PersonDetail: View {
    let person: Person
    
    var body: some View {
        HStack(spacing: 16) {
            Image(person.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(8)
            
            VStack(alignment: .leading, spacing: 8) {
                
                HStack {
                    Text(person.name)
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                    
                    Spacer()
                    
                    Text(person.time)
                        .foregroundStyle(Color(red: 155/255, green: 155/255, blue: 155/255))
                }
                Text(person.info)
                    .foregroundStyle(Color(red: 155/255, green: 155/255, blue: 155/255))
            }
            
            
        }
        .padding(15)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
    }
}
#Preview {
    listView()
}
