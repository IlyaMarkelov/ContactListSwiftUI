//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Илья Маркелов on 05.02.2022.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Contact]
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetails(contact: contact)) {
                    Text("\(contact.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Contact.getContactList())
    }
}
