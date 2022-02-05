//
//  SectionContactList.swift
//  ContactListSwiftUI
//
//  Created by Илья Маркелов on 05.02.2022.
//

import SwiftUI

struct SectionContactList: View {
    let contacts: [Contact]
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                    Section(header: Text(contact.fullName)) {
                        PersonInfoRaw(
                            image: Icons.phone.rawValue,
                            contact: contact.phoneNumber
                        )
                        PersonInfoRaw(
                            image: Icons.email.rawValue,
                            contact: contact.email
                        )
                    }
                }
            .navigationBarTitle("Contact List")
        }
    }
}

struct SectionContactList_Previews: PreviewProvider {
    static var previews: some View {
        SectionContactList(contacts: Contact.getContactList())
    }
}
