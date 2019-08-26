//
//  ViewController.swift
//  GiftView
//
//  Created by Art Williamson on 8/2/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import UIKit

class MainSelectionViewController: UIViewController {

    @IBOutlet weak var titelLabel: UILabel!
    @IBOutlet weak var birthdayButton: UIButton!
    @IBOutlet weak var christmasButton: UIButton!
    @IBOutlet weak var anniversaryButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!

    @IBAction func birthdaysClicked(_ sender: Any) {
        performSegue(withIdentifier: "BirthdaySegue", sender: nil)
    }

    @IBAction func christmasClicked(_ sender: Any) {
        performSegue(withIdentifier: "ChristmasSegue", sender: nil)
    }

    @IBAction func anniversariesClicked(_ sender: Any) {
        performSegue(withIdentifier: "AnniversarySegue", sender: nil)
    }

    @IBAction func otherClicked(_ sender: Any) {
        performSegue(withIdentifier: "OtherSegue", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ChristmasSegue" {
            let nav = segue.destination as? UINavigationController
            let controller = nav?.topViewController as! ChecklistViewController
            controller.title = "Christmas"
        }

        if segue.identifier == "BirthdaySegue" {
            let nav = segue.destination as? UINavigationController
            let controller = nav?.topViewController as! ChecklistViewController
            controller.title = "Birthdays"
        }

        if segue.identifier == "AnniversarySegue" {
            let nav = segue.destination as? UINavigationController
            let controller = nav?.topViewController as! ChecklistViewController
            controller.title = "Anniversaries"
        }

        if segue.identifier == "OtherSegue" {
            let nav = segue.destination as? UINavigationController
            let controller = nav?.topViewController as! ChecklistViewController
            controller.title = "Other Events"
        }
    }
}

