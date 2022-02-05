//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Илья Маркелов on 05.02.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Contact.getContactList()
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: Icons.contacts.rawValue)
                    Text("Contacts")
            }
            SectionContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: Icons.phone.rawValue)
                    Text("Contact List")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
