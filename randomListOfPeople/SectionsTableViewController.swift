//
//  SectionsTableViewController.swift
//  randomListOfPeople
//
//  Created by Татьяна on 09.03.2022.
//

import UIKit

class SectionsTableViewController: UITableViewController {
    
    let persons = Person.createPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    // 1 variant
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let person = persons[section]
//        return person.name + " " + person.surname
//    }

    // 2 variant
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
//
//        let person = persons[section]
//        headerCell.personLabel.text = person.name + " " + person.surname
//
//        return headerCell
//    }
    
    // 3 variant
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let person = persons[section]
//
//        let label = UILabel()
//        label.backgroundColor = .gray
//        label.textColor = .white
//        label.textAlignment = .center
//        label.font = UIFont.boldSystemFont(ofSize: 24)
//        label.text = person.name + " " + person.surname
//
//        return label
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let person = persons[section]
        
        let myView = UIView()
        myView.backgroundColor = .gray
        
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        label.text = person.name + " " + person.surname
        label.textColor = .white
        
        myView.addSubview(label)
        
        return myView
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = "Email: " + person.email
        case 1:
            content.text = "Phone number: " + person.phoneNumber
        default:
            break
        }
        cell.contentConfiguration = content
        return cell
    }


}
