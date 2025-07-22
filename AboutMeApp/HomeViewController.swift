//
//  HomeViewController.swift
//  AboutMeApp
//
//  Created by Ivan Honcharov on 22.07.25.
//

import UIKit

final class HomeViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var wellcomeLabel: UILabel!

    // MARK: - Properties
    var wellcome: String?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        wellcomeLabel.text = "Welcome, \(wellcome ?? "")"
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    // MARK: - Actions
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
}
