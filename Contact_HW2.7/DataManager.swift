//
//  Person.swift
//  Contact_HW2.7
//
//  Created by Anton Duplin on 27/7/21.
//
class DataManager {
    static let shared = DataManager()
    let names = ["David", "Tim", "Donald", "Paris",]
    let surnames = ["Bowie", "Cook", "Trump", "Hilton",]
    let emails = ["big@gmail.com", "forme@gmail.com", "onetwo@yahoo.com", "inboxme@yahoo.com"]
    let phoneNumbers = ["5532346142", "6988820457", "3844205327", "3287520304"]

func getPersonContact() -> [Person] {
    var list: [Person] = []
    let personNames = DataManager.shared.names.shuffled()
    let personSurnames = DataManager.shared.surnames.shuffled()
    let personEmails = DataManager.shared.emails.shuffled()
    let personPhoneNumbers = DataManager.shared.phoneNumbers.shuffled()

    for index in 0..<4 {
        let person = Person(
            name: personNames[index],
            surname: personSurnames[index],
            email: personEmails[index],
            phoneNumber: personPhoneNumbers[index]
        )
        list.append(person)
    }
return list
}
}
