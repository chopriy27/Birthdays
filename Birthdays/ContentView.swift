//
//  ContentView.swift
//  Birthdays
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends : [Friend] = [Friend(name: "Aditi", birthday: .now),Friend(name: "Tracey", birthday: Date(timeIntervalSince1970: 20))]
    
    var body: some View {
        List(friends, id: \.name) { friend in
            HStack {
                Text(friend.name)
                Spacer()
                Text(friend.birthday, format: .dateTime.month(.wide).day().year())
            }
            
        }
        .navigationTitle("Birthdays")
    }
}

#Preview {
    ContentView()
}
