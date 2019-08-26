//
//  AddPersonViewController.swift
//  GiftView
//
//  Created by Art Williamson on 8/26/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import Foundation
import UIKit

class AddPersonViewController: UITableViewController {
    
    @IBAction func saveClicked(_ sender: Any) {
    }

    @IBAction func cancelClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddPersonCell", for: indexPath)
        return cell
    }
}
