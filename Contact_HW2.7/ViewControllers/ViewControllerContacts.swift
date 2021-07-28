//
//  ViewControllerContacts.swift
//  Contact_HW2.7
//
//  Created by Anton Duplin on 27/7/21.
//

import UIKit

class ViewControllerContacts: UITabBarController {
//   private var names: [String] = ["David", "Tim", "Donald", "Paris"]
//   private var surnames: [String] = ["Bowie", "Cook", "Trump", "Hilton"]
//   private var emails: [String] = ["big@gmail.com", "forme@gmail.com", "onetwo@yahoo.com", "inboxme@yahoo.com"]
//   private var phoneNumbers: [String] = ["5532346142", "6988820457", "3844205327", "3287520304"]
//
 private var contactList = Contact.getContactList()
    
    let names = DataManager.shared.names.shuffled()
    let surnamee = DataManager.shared.surnames.shuffled()
    let email = DataManager.shared.emails.shuffled()
    let phoneNumber = DataManager.shared.phoneNumbers.shuffled()


    override func viewDidLoad() {
        super.viewDidLoad()




}
    }
