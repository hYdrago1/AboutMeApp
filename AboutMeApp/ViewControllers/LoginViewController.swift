//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Ivan Honcharov on 22.07.25.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: Private Properties
    private var user = User.myData.login
    private var password = User.myData.password
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.text = user
        passwordTF.text = password
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToHome" {
            if let tabBarController = segue.destination as? UITabBarController,
               let homeVC = tabBarController.viewControllers?.first as? HomeViewController {
                homeVC.wellcome = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard loginTF.text == user, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTF.text = ""
                }
            return false
        }
        return true
    }
    // MARK: Actions
    
    @IBAction func forgotUserDataAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops", andMessage: "Login is \(user)")
        : showAlert(withTitle: "Oops", andMessage: "Password is \(password)")
    }
    

    @IBAction func unwindToLoginVC(_ segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
