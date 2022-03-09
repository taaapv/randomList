//
//  DetailViewController.swift
//  randomListOfPeople
//
//  Created by Татьяна on 09.03.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var person: Person!

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.name + " " + person.surname

        emailLabel.text = "Email: " + person.email
        phoneNumberLabel.text = "Phone number: " + person.phoneNumber
    }

}
