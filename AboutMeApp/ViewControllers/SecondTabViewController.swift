//
//  SecondTabViewController.swift
//  AboutMeApp
//
//  Created by Ivan Honcharov on 25.07.25.
//

import UIKit

class SecondTabViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var photoView: UIImageView!
    
    //MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = User.myData.profile.name
        surnameLabel.text = User.myData.profile.surname
        ageLabel.text = User.myData.profile.age
        photoView.layer.cornerRadius = photoView.frame.width / 2
    }
}
