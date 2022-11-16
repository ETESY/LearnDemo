//
//  LoginVC.swift
//  LoginVC
//
//  Created by etesy on 2022/11/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
        if segue.identifier == "success",
            let destination = segue.destination as? SuccessVC {
            
            destination.text = "登录成功"
            
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(#function)
        if identifier == "success" {
            
            let username = usernameTextField.text ?? ""
            if username.isEmpty {
                errorLabel.text = "请输入用户名"
                return false
            }
            
            let password = passwordTextField.text ?? ""
            if password.isEmpty {
                errorLabel.text = "请输入密码"
                return false
            }
            
            errorLabel.text = nil
            
        }

        return true
    }


}

