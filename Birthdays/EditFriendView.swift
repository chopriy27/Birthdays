//
//  EditFriendView.swift
//  Birthdays
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct EditFriendView: View {
    var friend: Friend // new
    @State private var newName: String // new
    @State private var newBirthday: Date // new
    @Environment(\.dismiss) private var dismiss // new
    
    init(friend: Friend) { // new
        self.friend = friend // new
        _newName = State(initialValue: friend.name) // new
        _newBirthday = State(initialValue: friend.birthday) // new
    } // new
    
    var body: some View {
        Form { // new
                TextField("Name", text: $newName) // new
                DatePicker("Birthday", selection: $newBirthday, displayedComponents: .date) // new
        } // new
        .navigationTitle("Edit Friend") // new
        .navigationBarTitleDisplayMode(.inline) // new
        .toolbar { // new
            ToolbarItem(placement: .cancellationAction) { // new
                Button("Cancel") { // new
                    dismiss()
                } // new
            } // new
            ToolbarItem(placement: .confirmationAction) { // new
                    Button("Save") { // new
                            friend.name = newName // new
                            friend.birthday = newBirthday
                            dismiss() // new
                    } // new
                } // new
        } // new
    }
}

#Preview {
    NavigationStack { // new
           EditFriendView(friend: Friend(name: "Test", birthday: Date.now))
       } // new
}
