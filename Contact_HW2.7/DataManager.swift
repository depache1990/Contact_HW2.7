//
//  Person.swift
//  Contact_HW2.7
//
//  Created by Anton Duplin on 27/7/21.
//
class DataManager {
    static let shared = DataManager()
    let names: [String] = ["David", "Tim", "Donald", "Paris"]
    let surnames: [String] = ["Bowie", "Cook", "Trump", "Hilton"]
    let emails: [String] = ["big@gmail.com", "forme@gmail.com", "onetwo@yahoo.com", "inboxme@yahoo.com"]
    let phoneNumbers: [String] = ["5532346142", "6988820457", "3844205327", "3287520304"]
}
func getPersonContact() -> [Person] {
    var contacts: [Person] = []
    let names = DataManager.shared.names.shuffled()
    let surnames = DataManager.shared.surnames.shuffled()
    let emails = DataManager.shared.emails.shuffled()
    let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()

    for index in 0..<4 {
        let contact = Person(name: names[index],
                             surname: surnames[index],
                             email: emails[index],
                             phoneNumber: phoneNumbers[index]
        )
        contacts.append(contact)
    }
return contacts
}
