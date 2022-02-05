//
//  ContactDetails.swift
//  ContactListSwiftUI
//
//  Created by Илья Маркелов on 05.02.2022.
//

import SwiftUI

struct ContactDetails: View {
    let contact: Contact
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                Image(systemName: Icons.avatar.rawValue)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            PersonInfoRaw(image: Icons.phone.rawValue, contact: contact.phoneNumber)
            PersonInfoRaw(image: Icons.email.rawValue, contact: contact.email)
            Spacer()
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(contact: Contact.getContactList().first!)
    }
}
