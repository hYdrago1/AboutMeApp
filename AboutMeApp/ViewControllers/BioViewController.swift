//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Ivan Honcharov on 25.07.25.
//

import UIKit

class BioViewController: UIViewController {
    
    // MARK: Outlet
    @IBOutlet var biographyLabel: UILabel!
    
    // MARK: View Lifecycle 
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = User.myData.profile.bio
    }
}
