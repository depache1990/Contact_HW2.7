//
//  UpTableViewController.swift
//  Contact_HW2.7
//
//  Created by Anton Duplin on 28/7/21.
//

import UIKit

class UpTableViewController: UITableViewController {
    private let personList = DataManager.shared.getPersonContact()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        content.secondaryText = person.surname
        cell.contentConfiguration = content
        return cell
    }
    
    //затухаания ячеек
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: person)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactUpVC = segue.destination as? ContactUpViewController else { return }
        // guard let indexPath = tableView.indexPathForSelectedRow else { return }
        // let person = personList[indexPath.row]
        contactUpVC.person = sender as? Person
    }
}
