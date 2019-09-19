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

    required init?(coder aDecoder: NSCoder) {
        people = [Person]()
        let person1 = Person()
        person1.name = "Default Bob"
        person1.numberOfItems = 4
        people.append(person1)
        super.init(coder: aDecoder)
    }

    @IBAction func addPerson(){
        //do addition stuff
    }

    @IBAction func backClicked() {
        self.dismiss(animated: true, completion: nil)
        //save data to appropriate list (Birthday, Christmas etc)
    }

    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistPersonCell", for: indexPath)
        configureCell(cell: cell, indexPath: indexPath)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func configureCell(cell: UITableViewCell, indexPath: IndexPath) {
        let nameLabel = cell.viewWithTag(1000) as! UILabel
        let quantityLabel = cell.viewWithTag(1005) as! UILabel
        nameLabel.text = people[indexPath.row].name
        quantityLabel.text = String(people[indexPath.row].numberOfItems)
    }
}
