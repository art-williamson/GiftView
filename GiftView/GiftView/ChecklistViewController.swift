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
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistPerson", for: indexPath)
        return cell
    }
}
