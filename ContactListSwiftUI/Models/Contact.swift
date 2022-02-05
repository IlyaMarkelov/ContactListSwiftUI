//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Илья Маркелов on 05.02.2022.
//

struct Contact: Identifiable {
    var id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Contact {
    static func getContactList() -> [Contact] {
        
        var persons: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Contact(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Icons: String {
    case phone = "phone"
    case email = "tray"
    case avatar = "person.circle"
    case contacts = "person.3"
}
