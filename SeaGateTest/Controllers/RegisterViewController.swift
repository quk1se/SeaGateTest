//
//  RegisterViewController.swift
//  SeaGateTest
//
//  Created by moseu on 31.03.2024.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func signUpPressed(_ sender: UIButton) {
        if (isValidEmail(emailTextField.text!) &&
            passwordTextField.text! == 
            repPasswordTextField.text!)
        {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { authResult, error in
                if let error = error {
                    print("Error creating user: \(error.localizedDescription)")
                } else {
                    print("User created successfully")
                }
            }
        }
        func isValidEmail(_ email: String) -> Bool {
            let emailRegex = #"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegex)
            return emailTest.evaluate(with: email)
        }
    }
}
