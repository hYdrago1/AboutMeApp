//
//  HomeViewController.swift
//  AboutMeApp
//
//  Created by Ivan Honcharov on 22.07.25.
//

import UIKit

final class HomeViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet var wellcomeLabel: UILabel!

    // MARK: Properties
    var wellcome: String!
    
    // MARK: Private Properties
    let name = User.myData.profile.name
    let surname = User.myData.profile.surname
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        wellcomeLabel.text = """
            Welcome, \(wellcome ?? "")
            My name is \(name), \(surname)
            """
    }

    // MARK: Actions
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
}
