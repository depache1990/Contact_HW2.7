//
//  DownTableViewController.swift
//  Contact_HW2.7
//
//  Created by Anton Duplin on 28/7/21.
//

import UIKit

class DownTableViewController: UITableViewController {
    private let personList = DataManager.shared.getPersonContact()
    var person: Person!

    // MARK: - Table view data sourc

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)

        return cell
    }

}
