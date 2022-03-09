//
//  RandomListTableViewController.swift
//  randomListOfPeople
//
//  Created by Татьяна on 05.03.2022.
//

import UIKit

class RandomListTableViewController: UITableViewController {
    
    let persons = Person.createPerson()
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()

        content.text = person.name + " " + person.surname
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "detail" else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = persons[indexPath.row]
        }
    }

}
