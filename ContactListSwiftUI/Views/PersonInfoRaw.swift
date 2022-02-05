//
//  PersonInfoRaw.swift
//  ContactListSwiftUI
//
//  Created by Илья Маркелов on 05.02.2022.
//

import SwiftUI

struct PersonInfoRaw: View {
    let image: String
    let contact: String
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}

struct PersonInfoRaw_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoRaw(image: Icons.phone.rawValue, contact: Contact.getContactList().first!.phoneNumber)
    }
}
