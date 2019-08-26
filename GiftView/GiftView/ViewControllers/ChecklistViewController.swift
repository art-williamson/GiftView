//
//  ChecklistViewController.swift
//  GiftView
//
//  Created by Art Williamson on 8/23/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import Foundation
import UIKit

class ChecklistViewController : UITableViewController {

    var people: [Person] = []

    @IBAction func addPerson(){
        //do addition stuff
    }

    @IBAction func backClicked() {
        self.dismiss(animated: true, completion: nil)
    }

    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        people = [Person]()
        let person1 = Person()
        person1.name = "Bob"
        person1.numberOfItems = 4
        people.append(person1)
        //need to set the cell name and item # based on the person
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistPerson", for: indexPath)
        return cell
    }

    func configureCell(cell: UITableViewCell, indexPath: IndexPath) {

    }
}
