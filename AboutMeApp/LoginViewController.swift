//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Ivan Honcharov on 22.07.25.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToHome" {
            if let homeVC = segue.destination as? HomeViewController {
                homeVC.wellcome = loginTF.text
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    // MARK: - Actions
    @IBAction func loginButtonAction(_ sender: Any) {
        guard let login = loginTF.text, let password = passwordTF.text,
              !login.isEmpty, !password.isEmpty else {
            showAlert(withTitle: "Missing Information", andMessage: "Please enter both login and password")
            return
        }

        guard login == "admin", password == "1234" else {
            showAlert(withTitle: "Invalid Login or Password", andMessage: "Please try one more")
            return
        }

        performSegue(withIdentifier: "GoToHome", sender: self)
    }

    @IBAction func forgotUserNameAction(_ sender: Any) {
        showAlert(withTitle: "Oops", andMessage: "Login is 'admin'")
    }

    @IBAction func forgotPasswordAction(_ sender: Any) {
        showAlert(withTitle: "Oops", andMessage: "Password is '1234'")
    }

    @IBAction func unwindToLoginVC(_ segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }

    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.loginTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
