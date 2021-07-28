//
//  ContactUpViewController.swift
//  Contact_HW2.7
//
//  Created by Anton Duplin on 28/7/21.
//

import UIKit

class ContactUpViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameContactLabel: UINavigationItem!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
        nameContactLabel.title = person.name + " " + person.surname
        
       
    }

}
